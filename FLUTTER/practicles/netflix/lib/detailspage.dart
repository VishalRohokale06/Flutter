import 'package:flutter/material.dart';
import 'package:netflix/homescreen.dart';
import 'package:netflix/mobileview.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return (constraints.maxWidth > 500) ? DesktopView() : Mobileview();
    });
  }
}
