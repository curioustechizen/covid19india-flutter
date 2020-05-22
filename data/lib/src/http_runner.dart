import 'dart:math';

import 'package:data/src/historical_repository.dart';
import 'package:data/src/summary_repository.dart';
import 'package:domain/domain.dart';

Future<void> main() async {
  final summaryRepo = SummaryRepositoryImpl();
  final historicalRepo = HistoricalRepositoryImpl();

  final historicalInfo = await historicalRepo.getHistoricalData(
      StatisticScope.country(), Category.confirmed, 14);

  historicalInfo.fold(
          (Failure f) {
    print(f);
  }, (List<HistoricalDataPoint> success) {
    print(success);
  });
  //print(answer);
}
