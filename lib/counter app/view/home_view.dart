import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/counter_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CounterViewModel>(context, listen: false);


    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: const Text("+1"),
            ),


            Consumer<CounterViewModel>(
              builder: (context, model, child) {
                return Text("${counter.counter}", style: const TextStyle(
                  fontSize: 30
                ),);
              }
            ),



            ElevatedButton(
              onPressed: () => counter.decrement(),
              child: const Text("-1"),
            ),
          ],
        ),
      ),
    );
  }
}
