

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_state/redux/actions.dart';
import 'package:redux_state/redux/redux_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux Example'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              // display the value
              StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, state) {
                  return  Text(
                    '${state.counter}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  );
                },
              ),

              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: Colors.red,
                    elevation: 0.0,
                    height: 50,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Text(
                      "-", style: TextStyle(fontSize: 22, color: Colors
                        .white),),
                    onPressed: () {
                      //called the action
                      StoreProvider.of<AppState>(context).dispatch(DecrementAction());
                    },
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  MaterialButton(
                    color: Colors.green,
                    elevation: 0.0,
                    height: 50,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Text(
                      "+", style: TextStyle(fontSize: 22, color: Colors
                        .white),),
                    onPressed: () {
                      //called the action
                      StoreProvider.of<AppState>(context).dispatch(IncrementAction());
                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
