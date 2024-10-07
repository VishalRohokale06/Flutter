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
              "border",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            //color: Colors.amber,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.black),
              //color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
