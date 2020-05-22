
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain.dart';

part 'models.freezed.dart';

@freezed
abstract class SummaryInfo with _$SummaryInfo {
  const factory SummaryInfo(int total, int deltaToday) = _SummaryInfo;
}

@freezed
abstract class HistoricalDataPoint with _$HistoricalDataPoint {
  const factory HistoricalDataPoint(DateTime date, int count) = _HistoricalDataPoint;
}

@freezed
abstract class StatisticScope with _$StatisticScope {
  const factory StatisticScope.country() = _StatisticScopeCountry;
  const factory StatisticScope.stateUt(StateUT stateUt) = _StatisticScopeStateUT;
}

enum Category {
  confirmed,
  active,
  recovered,
  deceased,
  tested
}

