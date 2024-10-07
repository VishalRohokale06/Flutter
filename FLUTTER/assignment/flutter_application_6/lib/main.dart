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
            title: const Center(child: Text("Column")),
            backgroundColor: Colors.teal,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 7, 234, 255),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 7, 234, 255),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 7, 234, 255),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 7, 234, 255),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color.fromARGB(255, 7, 234, 255),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
