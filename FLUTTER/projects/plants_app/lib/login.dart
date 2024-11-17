import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SvgPicture.asset(
              "assets/svg/cir.svg",
              height: 128.2,
              width: 210,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Log in",
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    hintStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(164, 164, 164, 1)),
                    prefixIcon: const Icon(
                      Icons.call,
                      color: Color.fromRGBO(164, 164, 164, 1),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38, left: 15, right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Verification(),
                    ),
                  );
                },
                child: Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1)
                    ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: GoogleFonts.rubik(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            //SvgPicture.asset("assets/svg/Group 5315 (1).svg")
            const SizedBox(
              height: 30,
            ),
            Expanded(child: Image.asset("assets/log.png")),
          ],
        ),
      ),
    );
  }
}
