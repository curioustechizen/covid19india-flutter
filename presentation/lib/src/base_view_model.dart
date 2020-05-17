import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseViewModel<S, A> {
  @protected S currentState;
  final BehaviorSubject<S> uiState;
  
  BaseViewModel({@required S initialState}): 
        this.currentState = initialState,
        uiState = BehaviorSubject.seeded(initialState);

  @protected void emit(S state) {
    currentState = state;
    uiState.sink.add(state);
  }

  void dispatchAction(A action);
}