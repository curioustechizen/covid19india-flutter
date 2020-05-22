import 'package:domain/src/base/failure.dart';
import 'package:either_option/either_option.dart';
import '../common/models.dart';
import '../base/common_models.dart';

abstract class SummaryRepository {
  Future<Either<Failure, Map<Category, SummaryInfo>>> getSummary();
  Future<Either<Failure, Map<StateUT, SummaryInfo>>> getStateLevelDetails(Category category);
}