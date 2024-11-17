import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/login.dart';

class started_page extends StatefulWidget {
  const started_page({super.key});

  @override
  State<started_page> createState() => _started_pageState();
}

class _started_pageState extends State<started_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset("assets/image.png"),
          // SvgPicture.asset(
          //   "assets/svg/image 2.svg",
          //   height: 1500,
          //   width: 100,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy Your",
                  style: GoogleFonts.poppins(
                      fontSize: 34.22, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      "life with ",
                      style: GoogleFonts.poppins(
                          fontSize: 34.22, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Plants",
                      style: GoogleFonts.poppins(
                          fontSize: 34.22, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(62, 102, 24, 1),
                    Color.fromRGBO(124, 180, 70, 1)
                  ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
