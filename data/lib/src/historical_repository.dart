import 'dart:convert';

import 'package:data/src/data_constants.dart';
import 'package:domain/domain.dart';
import 'package:either_option/src/either.dart';
import 'package:http/http.dart' as http;

class HistoricalRepositoryImpl implements HistoricalRepository {
  @override
  Future<Either<Failure, List<HistoricalDataPoint>>> getHistoricalData(
      StatisticScope scope, Category category, int days) async {
    final bodyObject = _constructHistoricalDataQuery(scope, category, days);

    try {
      var jsonBody = jsonEncode(bodyObject);
      final networkResponse = await http.post(kUrl,
          headers: {'Content-Type': 'application/json'},
          body: jsonBody);
      if (networkResponse.statusCode == 200) {
        return Right(_parseHistoricalResponse(networkResponse.body, category));
      } else {
        return Left(NetworkFailure(
            'Response code: ${networkResponse.statusCode}, body = ${networkResponse.body}',
            null));
      }
    } catch (e) {
      return Left(NetworkFailure('Parsing failure', e));
    }
  }

  Map<String, dynamic> _constructHistoricalDataQuery(
      StatisticScope scope, Category category, int days) {
    return scope.when(country: () =>
      {
        'query': 'query {\n  country(name: \"India\") {\n    historical(reverse: true, count: $days) {\n      date\n      ${kJsonKeysMapTotal[category]}\n    }\n  }\n}'
      }
    , stateUt: (StateUT state) {
      throw UnimplementedError();
    });
  }

  List<HistoricalDataPoint> _parseHistoricalResponse(
      String body, Category category) {
    final List historical = jsonDecode(body)['data']['country']['historical'];
    //return historical.map((item) => _parseHistoricalDataPoint(item, category)); //TODO: Figure out why this crashes with exception
    var points = <HistoricalDataPoint>[];
    for (var item in historical) {
      points.add(_parseHistoricalDataPoint(item, category));
    }
    return points;
  }
  
  HistoricalDataPoint _parseHistoricalDataPoint(Map<String, dynamic> item, Category category) {
    return HistoricalDataPoint(dateFormat.parse(item['date']), item[kJsonKeysMapTotal[category]]);
  }
}