import 'package:flutter/material.dart';
import 'package:plants_app/login.dart';
import 'package:plants_app/verification.dart';

import 'home.dart';
import 'started_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: started_page(),
    );
  }
}
