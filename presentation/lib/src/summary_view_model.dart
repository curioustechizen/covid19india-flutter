import 'package:domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:presentation/src/base_view_model.dart';

class SummaryState {
  final Map<Category, SummaryItemState> summaryItems;
  final Category selectedCategory;

  SummaryState({@required this.summaryItems, @required this.selectedCategory});
}

class SummaryItemState {
  final String title;
  final String total;
  final String diff;

  SummaryItemState(
      {@required this.title, @required this.total, @required this.diff});
}

abstract class SummaryAction {}

class CategoryTappedAction implements SummaryAction {
  final Category tappedCategory;
  CategoryTappedAction(this.tappedCategory);
}

class InitAction implements SummaryAction{}

class SummaryViewModel extends BaseViewModel<SummaryState, SummaryAction> {
  final GetSummaryUseCase getSummaryUseCase;

  SummaryViewModel(
      {@required SummaryState initialState, @required this.getSummaryUseCase})
      : super(initialState: initialState) {
    dispatchAction(InitAction());
  }

  @override void dispatchAction(SummaryAction action) {
    if(action is CategoryTappedAction) {
      emit(SummaryState(summaryItems: this.currentState.summaryItems, selectedCategory: action.tappedCategory));
    }
    else if(action is InitAction) {
      getSummaryUseCase.invoke(
          Empty(),
              (Map<Category, SummaryInfo> success) => emit( _mapToUiState(success)),
              (Failure failure) => emit(_getErrorState()));
    }


  }

  SummaryState _mapToUiState(Map<Category, SummaryInfo> success) {
    return SummaryState(
        selectedCategory: currentState.selectedCategory,
        summaryItems: _mapToSummaryItemState(success));
  }

  Map<Category, SummaryItemState> _mapToSummaryItemState(
      Map<Category, SummaryInfo> success) {
    return Map.fromEntries(success.entries.map((e) =>
        MapEntry<Category, SummaryItemState>(e.key, _entryToSummaryItem(e)))) ;

  }

  SummaryItemState _entryToSummaryItem(MapEntry<Category, SummaryInfo> entry) {
    return SummaryItemState(
        total: entry.value.total.toString(),
        diff: entry.key == Category.active
            ? ""
            : "[+${entry.value.deltaToday}]",
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
