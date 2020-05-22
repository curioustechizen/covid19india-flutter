import 'dart:convert';

import 'package:domain/domain.dart';
import 'package:http/http.dart' as http;
import 'package:either_option/either_option.dart';
import 'data_constants.dart';

class SummaryRepositoryImpl extends SummaryRepository {

  @override
  Future<Either<Failure, Map<Category, SummaryInfo>>> getSummary() async {
    
    final bodyObject = {
      'query': 'query {\n  country(name: \"India\") {\n    country\n    cases\n    deaths\n    recovered\n    todayCases\n    todayDeaths\n    active\n    historical(count: 1, reverse: true) {\n      todayRecovered\n    }\n  }\n}'
    };

    try {
      final networkResponse = await http
          .post(kUrl, headers: {'Content-Type': 'application/json'}, body: jsonEncode(bodyObject));
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

  @override
  Future<Either<Failure, Map<StateUT, SummaryInfo>>> getStateLevelDetails(Category category) async {
    final bodyObject = {
      'query': 'query {\n  country(name: \"India\") {\n    states {\n      state\n      ${kJsonKeysMapTotal[category] ?? ''}\n      ${kJsonKeysMapToday[category] ?? ''}\n    }\n  }\n}'
    };

    try {
      final networkResponse = await http
          .post(kUrl, headers: {'Content-Type': 'application/json'}, body: jsonEncode(bodyObject));
      if(networkResponse.statusCode == 200) {
        return Right(_parseStateLevelDetails(networkResponse.body, category));
      } else {
        return Left(NetworkFailure('Response code: ${networkResponse.statusCode}, body = ${networkResponse.body}', null));
      }
    } catch (e) {
      return Left(NetworkFailure('Network failure', e));
    }
  }

  Map<StateUT, SummaryInfo> _parseStateLevelDetails(String body, Category category) {
    final info = json.decode(body)['data']['country']['states'];
    final stateInfoMap = { for (var item in info) item['state']: _stateInfoToSummaryInfo(item, category) };
    return kStateNamesMap.map((k, v) {
      if(stateInfoMap.containsKey(v)) {
        return MapEntry(k, stateInfoMap[v]);
      } else {
        return MapEntry(k, SummaryInfo(-1, -1)); //TODO: Better way to handle errors here
      }
    });
  }

  SummaryInfo _stateInfoToSummaryInfo(Map<String, dynamic> stateInfo, Category category) {
    return SummaryInfo(stateInfo[kJsonKeysMapTotal[category]], category == Category.active ? -1 : stateInfo[kJsonKeysMapToday[category]]);
  }
}



