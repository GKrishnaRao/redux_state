
import 'package:redux_state/redux/redux_state.dart';

import 'actions.dart';


//define how the state changes in response to actions
AppState counterReducer(AppState state, dynamic action) {

  if(action is IncrementAction){
    return AppState(state.counter + 1);
  }
  if(action is DecrementAction){
    return AppState(state.counter - 1);
  }

  return state;
}