import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presentation/src/base_view_model.dart';

part 'charts_view_model.freezed.dart';

const kDaysOfHistoricalData = 14;

@freezed
abstract class ChartsAction with _$ChartsAction {
  const factory ChartsAction.init() = _ChartsActionInit;

  const factory ChartsAction.selectCategory(Category category) =
      _ChartsActionSelectCategory;
}

@freezed
abstract class ChartsState with _$ChartsState {
  const factory ChartsState(
      {@required Category currentCategory,
      @required List<HistoricalDataPoint> dataPoints}) = _ChartsState;
}

class ChartsViewModel extends BaseViewModel<ChartsState, ChartsAction> {
  final GetHistoricalDataUseCase getHistoricalDataUseCase;

  ChartsViewModel({@required this.getHistoricalDataUseCase, @required ChartsState initialState}): super(initialState: initialState);

  @override
  void onInit() {
    super.onInit();
    dispatchAction(ChartsAction.init());
  }

  @override
  Function(ChartsAction action) get actionProcessor => (action) {
        var historicalDataSuccess =
            (List<HistoricalDataPoint> success) => emit(_mapToUiState(success));
        var historicalDataFailure =
            (Failure failure) => emit(_mapToUiStateFailure(failure));
        action.when(
            init: () => getHistoricalDataUseCase.invoke(
                _getParams(currentState.currentCategory),
                historicalDataSuccess,
                historicalDataFailure),
            selectCategory: (category) {
              emit(currentState.copyWith(currentCategory: category));
              getHistoricalDataUseCase.invoke(
                _getParams(category),
                historicalDataSuccess,
                historicalDataFailure);
            });
      };

  HistoricalDataParams _getParams(Category category) {
    return HistoricalDataParams(
        scope: StatisticScope.country(),
        category: category,
        days: kDaysOfHistoricalData);
  }

  ChartsState _mapToUiState(List<HistoricalDataPoint> success) {
    return currentState.copyWith(dataPoints: success);
  }

  ChartsState _mapToUiStateFailure(Failure failure) {
    return currentState.copyWith(dataPoints: []);
  }
}
