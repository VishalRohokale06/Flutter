import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  String? myName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Aspect Ratio Demo",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 380,
            color: Colors.amber,
            child: Image.network(
                "https://dinoanimals.com/wp-content/uploads/2020/08/Animals-love-3.jpg"),
          ),
        ),
      ),
    );
  }
}
