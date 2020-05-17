import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:presentation/src/base_view_model.dart';

class StateLevelState {
  final Category selectedCategory;
  final Map<StateUT, SummaryInfo> stateLevelInfo;

  StateLevelState(this.selectedCategory, this.stateLevelInfo);

}

abstract class StateLevelAction {}

class StateLevelInitAction implements StateLevelAction {}

class StateLevelSelectCategoryAction implements StateLevelAction {
  final Category category;
  StateLevelSelectCategoryAction(this.category);
}

class MapStateLevelViewModel
    extends BaseViewModel<StateLevelState, StateLevelAction> {
  final GetStateLevelUseCase getStateLevelUseCase;

  MapStateLevelViewModel(
      {@required StateLevelState initialState, @required this.getStateLevelUseCase})
      : super(initialState: initialState) {
    dispatchAction(StateLevelInitAction());
  }

  @override
  void dispatchAction(StateLevelAction action) {
    var stateLevelInfoSuccess = (Map<StateUT, SummaryInfo> success) =>
        emit(_mapToUiState(success));
    var stateLevelInfoFailure = (Failure failure) =>
        emit(_mapToUiStateFailure(failure));
    if (action is StateLevelInitAction) {
      getStateLevelUseCase.invoke(
          currentState.selectedCategory,
          stateLevelInfoSuccess,
          stateLevelInfoFailure
      );
    } else if (action is StateLevelSelectCategoryAction) {
      emit(StateLevelState(action.category, currentState.stateLevelInfo));
      getStateLevelUseCase.invoke(
          action.category, stateLevelInfoSuccess, stateLevelInfoFailure);
    }
  }

  StateLevelState _mapToUiState(Map<StateUT, SummaryInfo> success) {
    return StateLevelState(currentState.selectedCategory, success);
  }

  StateLevelState _mapToUiStateFailure(Failure failure) {
    final empty = { for(var state in StateUT.values) state: SummaryInfo(0, 0)};
    return StateLevelState(currentState.selectedCategory, empty);
  }
}