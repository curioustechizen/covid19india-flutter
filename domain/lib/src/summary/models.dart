
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
abstract class SummaryInfo with _$SummaryInfo {
  const factory SummaryInfo(int total, int deltaToday) = _SummaryInfo;
}


enum Category {
  confirmed,
  active,
  recovered,
  deceased,
  tested
}

