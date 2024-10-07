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
          elevation: 20,
          title: const Text(
            "Image",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          shadowColor: Colors.purpleAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.amber,
                  child: Image.network(
                    "https://th.bing.com/th/id/OIP.DLuq15izYAe6kaIWp-ADXQHaHa?pid=ImgDet&w=170&h=170&c=7&dpr=1.3",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.DLuq15izYAe6kaIWp-ADXQHaHa?pid=ImgDet&w=170&h=170&c=7&dpr=1.3",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.DLuq15izYAe6kaIWp-ADXQHaHa?pid=ImgDet&w=170&h=170&c=7&dpr=1.3",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
