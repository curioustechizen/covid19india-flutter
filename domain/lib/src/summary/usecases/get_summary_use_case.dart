import 'package:domain/domain.dart';
import 'package:domain/src/base/base_use_case.dart';
import 'package:domain/src/base/failure.dart';
import 'package:domain/src/summary/summary_repository.dart';
import 'package:either_option/src/either.dart';

class GetSummaryUseCase extends BaseUseCase<Empty, Map<Category, SummaryInfo>> {
  final SummaryRepository summaryRepository;

  GetSummaryUseCase(this.summaryRepository);

  @override
  Future<Either<Failure, Map<Category, SummaryInfo>>> run(Empty params) {
    return summaryRepository.getSummary();
  }
}