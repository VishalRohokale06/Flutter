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
            "AppBar",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          )),
          backgroundColor: Colors.orangeAccent,
          actions: const [
            Icon(Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}
