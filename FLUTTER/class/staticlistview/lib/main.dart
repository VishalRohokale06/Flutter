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
          title: const Text(
            "Listview Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView(
          children: [
            Image.network(
                "https://th.bing.com/th/id/OIP.mpodgo8PneseADQM5HtRAQHaEK?w=332&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Image.network(
                "https://th.bing.com/th/id/OIP.mpodgo8PneseADQM5HtRAQHaEK?w=332&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.green,
                child: const Text(
                  "Press me",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
