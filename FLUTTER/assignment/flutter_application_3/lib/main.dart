import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Hello Core2Web",
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 360,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
