import 'package:domain/domain.dart';
import 'package:domain/src/base/base_use_case.dart';
import 'package:either_option/either_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../common/models.dart';
import '../historical_repository.dart';

part 'get_historical_data_use_case.freezed.dart';

@freezed
abstract class HistoricalDataParams with _$HistoricalDataParams {
  const factory HistoricalDataParams({@required StatisticScope scope, @required Category category, @required int days}) = _HistoricalDataParams;
}

class GetHistoricalDataUseCase extends BaseUseCase<HistoricalDataParams, List<HistoricalDataPoint>> {
  final HistoricalRepository historicalRepository;

  GetHistoricalDataUseCase(this.historicalRepository);

  @override
  @override
  Future<Either<Failure, List<HistoricalDataPoint>>> run(HistoricalDataParams params) {
    return historicalRepository.getHistoricalData(params.scope, params.category, params.days);
  }

}
