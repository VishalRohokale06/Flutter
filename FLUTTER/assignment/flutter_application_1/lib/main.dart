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
            ),
          ),
          backgroundColor: Colors.deepOrange,
          actions: const [
            Icon(Icons.access_alarm),
            Icon(Icons.airline_seat_legroom_normal_sharp),
          ],
        ),
      ),
    );
  }
}
