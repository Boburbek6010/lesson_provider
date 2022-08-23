import 'package:flutter/material.dart';
import 'package:lesson_provider/counters%20app/view_model/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterOneView extends StatelessWidget {
  const CounterOneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=>CounterViewModel(),
      builder: (context, child){
        var counterModel=Provider.of<CounterViewModel>(context, listen: false);
        return  Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("+1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
                onPressed: () =>counterModel.oneIncrement(),
              ),

              Consumer<CounterViewModel>(
                builder: (context, model, child) {
                  return Text("one${model.counterModel.counterOne},two:${model.counterModel.counterTwo}", style: const TextStyle(fontSize: 30),);
                }
              ),

              ElevatedButton(
                child: const Text("+1", style: TextStyle(color: Colors.greenAccent, fontSize: 25),),
                onPressed: () =>counterModel.oneDecrement(),
              ),
            ],
          ),
        );
      },
    );
  }
}