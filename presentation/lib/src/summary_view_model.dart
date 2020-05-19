import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:presentation/src/base_view_model.dart';

part 'summary_view_model.freezed.dart';

@freezed
abstract class SummaryState with _$SummaryState {
  const factory SummaryState({
    @required Map<Category, SummaryItemState> summaryItems,
    @required Category selectedCategory}) = _SummaryState;
}

@freezed
abstract class SummaryItemState with _$SummaryItemState {
  const factory SummaryItemState({
    @required String title,
    @required String total,
    @required String diff}) = _SummaryItemState;
}

@freezed
abstract class SummaryAction with _$SummaryAction {
  const factory SummaryAction.categoryTapped(Category category) =
      _CategoryTapped;
  const factory SummaryAction.init() = _SummaryActionInit;
}

class SummaryViewModel extends BaseViewModel<SummaryState, SummaryAction> {
  final GetSummaryUseCase getSummaryUseCase;

  SummaryViewModel(
      {@required SummaryState initialState, @required this.getSummaryUseCase})
      : super(initialState: initialState) {
    dispatchAction(SummaryAction.init());
  }

  @override
  void dispatchAction(SummaryAction action) {
    action.when(
        categoryTapped: (category) => emit(this.currentState.copyWith(selectedCategory: category)),
        init: () => getSummaryUseCase.invoke(
            Empty(),
            (Map<Category, SummaryInfo> success) =>
                emit(_mapToUiState(success)),
            (Failure failure) => emit(_getErrorState())));
  }

  SummaryState _mapToUiState(Map<Category, SummaryInfo> success) {
    return this.currentState.copyWith(summaryItems: _mapToSummaryItemState(success));
  }

  Map<Category, SummaryItemState> _mapToSummaryItemState(
      Map<Category, SummaryInfo> success) {
    return Map.fromEntries(success.entries.map((e) =>
        MapEntry<Category, SummaryItemState>(e.key, _entryToSummaryItem(e))));
  }

  SummaryItemState _entryToSummaryItem(MapEntry<Category, SummaryInfo> entry) {
    return SummaryItemState(
        total: entry.value.total.toString(),
        diff:
            entry.key == Category.active ? "" : "[+${entry.value.deltaToday}]",
        title: entry.key.title);
  }

  SummaryState _getErrorState() {
    return SummaryState(selectedCategory: Category.confirmed, summaryItems: {
      Category.confirmed:
          SummaryItemState(title: "Confirmed", total: "-", diff: "-"),
      Category.active: SummaryItemState(title: "Active", total: "-", diff: ""),
      Category.recovered:
          SummaryItemState(title: "Recovered", total: "-", diff: "-"),
      Category.deceased:
          SummaryItemState(title: "Deceased", total: "-", diff: "-"),
    });
  }
}

extension on Category {
  String get title {
    switch (this) {
      case Category.confirmed:
        return "Confirmed";
      case Category.active:
        return "Active";
      case Category.recovered:
        return "Recovered";
      case Category.deceased:
        return "Deceased";
      case Category.tested:
        return "Tested";
    }
  }
}
