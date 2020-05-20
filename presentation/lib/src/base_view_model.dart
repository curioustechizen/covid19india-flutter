import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseViewModel<S, A> {
  @protected S currentState;
  BehaviorSubject<S> uiState; //TODO: This needs to be final but we cannot use non-static methods in constructor. Find idiomatic Dart way to achieve this

  final BehaviorSubject<A> _actions = BehaviorSubject<A>(); //TODO: can we make this a simple Stream instead of BehaviourSubject?

  @protected Function(A) actionProcessor;
  
  BaseViewModel({@required S initialState}): 
        this.currentState = initialState {
    uiState = BehaviorSubject.seeded(
        initialState,
        onListen: onInit,
        onCancel: onDispose);
    _actions.listen((event) {
      actionProcessor(event);
    });
  }

  @protected void emit(S state) {
    //TODO: Use streams here instead so that we can use debounce, distinct etc
    final distinct = currentState != state;
    currentState = state;
    if(distinct && !uiState.isClosed) uiState.sink.add(state);
  }

  void dispatchAction(A action) {
    if(!_actions.isClosed) {
      _actions.sink.add(action);
    }
  }

  @mustCallSuper
  void onInit() {
    print('BaseViewModel onInit()');
  }

  @mustCallSuper
  void onDispose() {
    print('BaseViewModel onDispose()');
    _actions.close();
  }
}