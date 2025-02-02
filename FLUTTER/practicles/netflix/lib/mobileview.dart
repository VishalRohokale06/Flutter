import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mobileview extends StatefulWidget {
  const Mobileview({super.key});

  @override
  State<Mobileview> createState() => _MobileviewState();
}

class _MobileviewState extends State<Mobileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          //Color.fromRGBO(35, 35, 35, 1),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Image.asset(
                        "assets/netflispos.png",
                        fit: BoxFit.fitHeight,
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.2,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Image.asset(
                                "assets/netflix.png",
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.white54,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.language_outlined,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03,
                                          ),
                                          // Text(
                                          //   "English",
                                          //   style: TextStyle(
                                          //       color: Colors.white,
                                          //       fontSize: MediaQuery.of(context)
                                          //               .size
                                          //               .width *
                                          //           0.027),
                                          // ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromRGBO(232, 7, 21, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 15),
                                    child: Text(
                                      "Sign In",
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.027),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 60),
                        child: Column(
                          children: [
                            Text(
                              "Unlimited movies, TV shows and more",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Watch anywhere. Cancle anytime",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.05,
                            ),
                            Text(
                              "Ready to watch? Enter your email to create or restart your memebership.",
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: Container(
                                color: Colors.white12,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white12)),
                                      fillColor: Colors.black12,
                                      label: Text(
                                        "Email address",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03),
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.284,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white70),
                                  color: Color.fromRGBO(232, 7, 21, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Get Started",
                                          style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 70, right: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Enjoy on your TV",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.043,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/tv.png",
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 50, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Download your shows to watch offline",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Save your favourites easily and always havesomething to watch.",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          "assets/n.png",
                          height: MediaQuery.of(context).size.width * 0.6,
                          width: MediaQuery.of(context).size.width * 0.6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 60, right: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Watch everywhere",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/ntva.png",
                    height: MediaQuery.of(context).size.width * 0.6,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 60, right: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Create profiles for kids",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Send children on adventures with their favourite characters in a space made just for them-free with your membership.",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/chiln.png",
                    height: MediaQuery.of(context).size.width * 0.6,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 60, right: 60),
                child: Column(
                  children: [
                    Text(
                      "Frequently Asked Questions",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "What is Netflix?",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "How much does Netflix cost?",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "Where can I watch",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "How can I watch",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "What can I watch on Netflix?",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white24,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              "is Netflix good for kids?",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.026,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Text(
                        "Ready to watch? Enter your email to create or restart your membership.",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                fillColor: Colors.white24,
                                label: Text(
                                  "Email address",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.02),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.width * 0.07,
                            width: MediaQuery.of(context).size.width * 0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(232, 7, 21, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "Get Started",
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.027),
                                    ),
                                    Icon(Icons.keyboard_arrow_right_outlined,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.04)
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Questions? Call 000-800-919-1694",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.025),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FAQ",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Media Centre",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ways to Watch",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cookie Preferences",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Speed Test",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Help Centre",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Investor Relations",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Terms of Use",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Corporate Information",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Legal Notices",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Account",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jobs",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Privacy",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Contact Us",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Only on Netflix",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.white54,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            children: [
                              Icon(
                                Icons.language_outlined,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width * 0.03,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width * 0.03,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Netflix India",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.017),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
