import 'package:course_app/two.dart';
import 'package:flutter/material.dart';

import 'one.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: One(),
    );
  }
}
