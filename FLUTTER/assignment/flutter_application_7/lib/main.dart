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
              "Image",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://i.etsystatic.com/27793952/r/il/b4ed42/3104925081/il_fullxfull.3104925081_9gos.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://images.hdqwalls.com/download/sunrise-at-the-dolomites-italy-u7-3840x2160.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpaperaccess.com/full/2093934.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpaperaccess.com/full/2093909.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpapercave.com/wp/wp4889248.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://images.hdqwalls.com/wallpapers/mountain-scenery-morning-sun-rays-4k-kf.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://i.etsystatic.com/27793952/r/il/b4ed42/3104925081/il_fullxfull.3104925081_9gos.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://images.hdqwalls.com/download/sunrise-at-the-dolomites-italy-u7-3840x2160.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpaperaccess.com/full/2093934.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpaperaccess.com/full/2093909.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://wallpapercave.com/wp/wp4889248.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    color: Colors.indigo,
                    child: Image.network(
                      "https://images.hdqwalls.com/wallpapers/mountain-scenery-morning-sun-rays-4k-kf.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
