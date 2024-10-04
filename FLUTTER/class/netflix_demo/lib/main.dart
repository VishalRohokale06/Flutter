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
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 200,
                        width: 300,
                        child: Image.network(
                            "https://th.bing.com/th/id/OIP.iiJprNeFgvr_PuZX8wMrlgHaE8?w=208&h=139&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 200,
                        width: 300,
                        child: Image.network(
                            "https://th.bing.com/th/id/OIP.iiJprNeFgvr_PuZX8wMrlgHaE8?w=208&h=139&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 200,
                        width: 300,
                        child: Image.network(
                            "https://th.bing.com/th/id/OIP.iiJprNeFgvr_PuZX8wMrlgHaE8?w=208&h=139&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 200,
                        width: 300,
                        child: Image.network(
                            "https://th.bing.com/th/id/OIP.iiJprNeFgvr_PuZX8wMrlgHaE8?w=208&h=139&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
