

import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:redux_state/redux/reducers.dart';

import 'actions.dart';

@immutable
class AppState{   //Define the AppState
  final int counter;
  AppState(this.counter);
}

//combine the reducers
final appReducer = combineReducers<AppState>([
  TypedReducer<AppState, IncrementAction>(counterReducer),
  TypedReducer<AppState, DecrementAction>(counterReducer),
]);
