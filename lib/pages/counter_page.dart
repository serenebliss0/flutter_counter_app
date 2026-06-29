import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  //variable
  int _counter = 0;

  //method
  void _incrementCounter(){
    //if you dont wrap in setState, the changes wont be reflected
    setState(() {
      _counter++;
    });
  }

  //UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You've pushed this button this many times"),

            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 24),
            ),

            ElevatedButton(onPressed: _incrementCounter, 
            child: 
              Text("Tap me!")
            )
          ],
        ),
      ),
    );
  }
}