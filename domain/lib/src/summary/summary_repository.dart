import 'package:domain/src/base/failure.dart';
import 'package:either_option/either_option.dart';
import 'models.dart';

abstract class SummaryRepository {
  Future<Either<Failure, Map<Category, SummaryInfo>>> getSummary();
}