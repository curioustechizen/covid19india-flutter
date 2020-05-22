import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presentation/src/base_view_model.dart';

part 'map_state_level_view_model.freezed.dart';

@freezed
abstract class StateLevelState with _$StateLevelState {
  const factory StateLevelState({
    @required Category selectedCategory,
    @required Map<StateUT, SummaryInfo> stateLevelInfo}) = _StateLevelState;
}

@freezed
abstract class StateLevelAction with _$StateLevelAction {
  const factory StateLevelAction.init() = _StateLevelActionInit;
  const factory StateLevelAction.selectCategory(Category category) = _SelectCategory;
}

class MapStateLevelViewModel
    extends BaseViewModel<StateLevelState, StateLevelAction> {
  final GetStateLevelUseCase getStateLevelUseCase;

  MapStateLevelViewModel({
    @required StateLevelState initialState,
    @required this.getStateLevelUseCase
  }) : super(initialState: initialState);

  @override
  Function(StateLevelAction action) get actionProcessor => (action) {
    var stateLevelInfoSuccess = (Map<StateUT, SummaryInfo> success) =>
        emit(_mapToUiState(success));
    var stateLevelInfoFailure = (Failure failure) =>
        emit(_mapToUiStateFailure(failure));

    action.when(
        init: () =>
            getStateLevelUseCase.invoke(
                currentState.selectedCategory,
                stateLevelInfoSuccess,
                stateLevelInfoFailure
            ),
        selectCategory: (category) {
          emit(this.currentState.copyWith(selectedCategory: category));
          getStateLevelUseCase.invoke(
              category, stateLevelInfoSuccess, stateLevelInfoFailure);
        }
    );
  };

  @override
  void onInit() {
    super.onInit();
    dispatchAction(StateLevelAction.init());
  }

  StateLevelState _mapToUiState(Map<StateUT, SummaryInfo> success) {
    return this.currentState.copyWith(stateLevelInfo: success);
  }

  StateLevelState _mapToUiStateFailure(Failure failure) {
    final empty = { for(var state in StateUT.values) state: SummaryInfo(0, 0)};
    return this.currentState.copyWith(stateLevelInfo: empty);
  }
}