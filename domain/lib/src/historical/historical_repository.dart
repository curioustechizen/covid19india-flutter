import 'package:domain/src/base/failure.dart';
import 'package:domain/src/common/models.dart';
import 'package:either_option/either_option.dart';

abstract class HistoricalRepository {
  Future<Either<Failure, List<HistoricalDataPoint>>> getHistoricalData(StatisticScope scope, Category category, int days);
}