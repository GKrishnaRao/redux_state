import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_state/redux/redux_state.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  //initialize the Redux store
  final Store<AppState> store = Store(
    appReducer,
    initialState: AppState(0),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StoreBuilder<AppState>(
          builder: (BuildContext context, Store<AppState> store) {
            return HomeScreen();
          },
        ),
      ),
    );
  }
}

