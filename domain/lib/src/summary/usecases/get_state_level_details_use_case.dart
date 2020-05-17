import 'package:domain/domain.dart';
import 'package:domain/src/base/base_use_case.dart';
import 'package:either_option/src/either.dart';

class GetStateLevelUseCase extends BaseUseCase<Category, Map<StateUT, SummaryInfo>> {

  final SummaryRepository summaryRepository;

  GetStateLevelUseCase(this.summaryRepository);

  @override
  Future<Either<Failure, Map<StateUT, SummaryInfo>>> run(Category params) {
    return summaryRepository.getStateLevelDetails(params);
  }

}