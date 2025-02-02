import 'package:flutter/material.dart';
import 'package:netflix/detailspage.dart';
import 'package:netflix/homescreen.dart';
import 'package:netflix/mobileview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: ThemeData.dark(),
        home: Detailspage());
  }
}
