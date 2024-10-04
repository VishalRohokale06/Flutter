import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: const Alignment(100, 0.235),
                child: Container(
                  width: 10,
                  height: 205,
                  color: Colors.brown,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 35,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    color: Colors.white,
                    child: Image.network(
                        "https://th.bing.com/th?id=OIP.3Qy_tWSbwT5Wb8DCsBal8gHaHw&w=244&h=255&c=8&rs=1&qlt=30&o=6&dpr=1.3&pid=3.1&rm=2"),
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
