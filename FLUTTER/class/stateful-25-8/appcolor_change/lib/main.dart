import 'package:flutter/material.dart';

void main() {
  runApp(const CounterColorApp());
}

class CounterColorApp extends StatefulWidget {
  const CounterColorApp({super.key});

  @override
  State createState() => _CounterColorAppState();
}

class _CounterColorAppState extends State {
  bool colorChange = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Color App'),
          centerTitle: true,
          backgroundColor: colorChange ? Colors.red : Colors.indigo,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: colorChange ? Colors.amberAccent : Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorChange == true) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          backgroundColor: Colors.orange,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
