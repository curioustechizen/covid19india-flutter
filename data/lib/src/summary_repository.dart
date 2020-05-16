import 'dart:convert';

import 'package:domain/domain.dart';
import 'package:http/http.dart' as http;
import 'package:either_option/either_option.dart';

class SummaryRepositoryImpl extends SummaryRepository {
  @override
  Future<Either<Failure, Map<Category, SummaryInfo>>> getSummary() async {
    final url = 'https://covidstat.info/graphql';
    final bodyObject = {
      'query': 'query {\n  country(name: \"India\") {\n    country\n    cases\n    deaths\n    recovered\n    todayCases\n    todayDeaths\n    active\n    historical(count: 1, reverse: true) {\n      todayRecovered\n    }\n  }\n}'
    };

    try {
      final networkResponse = await http
          .post(url, headers: {'Content-Type': 'application/json'}, body: jsonEncode(bodyObject));
      if(networkResponse.statusCode == 200) {
        return Right(_parseSummaryResponse(networkResponse.body));
      } else {
        return Left(NetworkFailure('Response code: ${networkResponse.statusCode}, body = ${networkResponse.body}', null));
      }
    } catch (e) {
      return Left(NetworkFailure('Network failure', e));
    }
  }

  Map<Category, SummaryInfo> _parseSummaryResponse(String body) {
    final info = json.decode(body)['data']['country'];
    return {
      Category.confirmed: SummaryInfo(info['cases'], info['todayCases']),
      Category.active: SummaryInfo(info['active'], -1),
      Category.recovered: SummaryInfo(info['recovered'], info['historical'][0]['todayRecovered']),
      Category.deceased: SummaryInfo(info['deaths'], info['todayDeaths']),
    };
  }
}

