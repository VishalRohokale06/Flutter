import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

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
                      child: Image.asset(
                        "assets/netflispos.png",
                        fit: BoxFit.cover,
                      )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.1,
                              width: MediaQuery.of(context).size.width * 0.1,
                              child: Image.asset(
                                "assets/netflix.png",
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white54,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.language_outlined,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Text(
                                        "English",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.017),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(232, 7, 21, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1, horizontal: 15),
                                    child: Text(
                                      "Sign In",
                                      style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.017),
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
                      Text(
                        "Unlimited movies, TV shows and more",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Watch anywhere. Cancle anytime",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.028),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Text(
                        "Ready to watch? Enter your email to create or restart your memebership.",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width * 0.02),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 150, right: 20),
                              child: Container(
                                color: Colors.white24,
                                // height: MediaQuery.of(context).size.width * 0.05,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      fillColor: Colors.white,
                                      label: Text(
                                        "Email address",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(232, 7, 21, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Get Started",
                                        style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.017),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enjoy on your TV",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                          ),
                          Text(
                            "Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/tv.png",
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/n.png",
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "Download your shows to watch offline",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                          ),
                          Text(
                            "Save your favourites easily and always havesomething to watch.",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/ntva.png",
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Watch everywhere",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                          ),
                          Text(
                            "Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.015,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Frequently Asked Questions",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.05,
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
                                  MediaQuery.of(context).size.width * 0.02,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    "Ready to watch? Enter your email to create or restart your membership.",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.width * 0.015,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 200, right: 20),
                          child: Container(
                            // color: Colors.white24,
                            //height: MediaQuery.of(context).size.width * 0.05,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(232, 7, 21, 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Get Started",
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.017),
                                  ),
                                  Icon(Icons.keyboard_arrow_right_outlined,
                                      color: Colors.white,
                                      size: MediaQuery.of(context).size.width *
                                          0.02)
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Questions? Call 000-800-919-1694",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.017),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FAQ",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Media Centre",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Ways to Watch",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Cookie Preferences",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Speed Test",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Help Centre",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Investor Relations",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Terms of Use",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Corporate Information",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Legal Notices",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Account",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Jobs",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Privacy",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Contact Us",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Only on Netflix",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.017),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white54,
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.language_outlined,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.017),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.02,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Netflix India",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.017),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
