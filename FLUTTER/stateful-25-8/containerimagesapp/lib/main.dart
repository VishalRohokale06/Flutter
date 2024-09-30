import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerImageApp());
}

class ContainerImageApp extends StatefulWidget {
  const ContainerImageApp({super.key});

  @override
  State createState() => _ContainerImageAppState();
}

class _ContainerImageAppState extends State {
  int _counter = 0;

  List ImageList = [
    "https://th.bing.com/th/id/OIP.mHRegy4XXSoaQ6n4o7_cWwHaEK?w=273&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.zq-VDKAbYD8QzZz-KAOzOgAAAA?w=259&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.1YfQtg55ddV9u05YsWHl1gHaEK?w=275&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.SonZSoKo4QeIVScOXBnMKQHaFH?w=236&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Image App"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              ImageList[_counter],
              height: 300,
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_counter < ImageList.length - 1) {
                _counter++;
              } else {
                _counter = 0;
              }
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
