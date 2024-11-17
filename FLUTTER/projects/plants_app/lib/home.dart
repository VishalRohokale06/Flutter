import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: const Color.fromRGBO(251, 247, 248, 1),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset("assets/homed.png")],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find Your",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                      Text("favorite plants",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Color.fromRGBO(225, 225, 225, 1),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/svg/shopping-bag.svg"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 108,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(204, 231, 185, 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 28.0, left: 38, right: 28),
                            child: Column(
                              children: [
                                Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("02-23 April",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              "assets/hpot.png",
                              //scale: 0.01,
                              height: 108,
                              width: 120,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 108,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(204, 231, 185, 1)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 28.0, left: 48, right: 28),
                            child: Column(
                              children: [
                                Text(
                                  "30% OFF",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text("02-23 April",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Image.asset(
                              "assets/hpot.png",
                              //scale: 0.01,
                              height: 108,
                              width: 120,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Indoor",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 18),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/pott.png"),
                                        Text(
                                          "Snake Plants",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 13.16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.92,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const Spacer(),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10.0),
                                              child: Icon(
                                                  Icons.shopping_bag_outlined),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 18),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/pott.png"),
                                        Text(
                                          "Snake Plants",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 13.16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.92,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const Spacer(),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10.0),
                                              child: Icon(
                                                  Icons.shopping_bag_outlined),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 188,
                                  width: 141,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 18),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/pott.png"),
                                        Text(
                                          "Snake Plants",
                                          style: GoogleFonts.dmSans(
                                              fontSize: 13.16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "₹350",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.92,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const Spacer(),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10.0),
                                              child: Icon(
                                                  Icons.shopping_bag_outlined),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Outdoor",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 188,
                                      width: 141,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/pott.png"),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 13.16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "₹350",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.92,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const Spacer(),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.0),
                                                  child: Icon(Icons
                                                      .shopping_bag_outlined),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 188,
                                      width: 141,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/pott.png"),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 13.16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "₹350",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.92,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const Spacer(),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.0),
                                                  child: Icon(Icons
                                                      .shopping_bag_outlined),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 188,
                                      width: 141,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 18),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset("assets/pott.png"),
                                            Text(
                                              "Snake Plants",
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 13.16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "₹350",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 16.92,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const Spacer(),
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 10.0),
                                                  child: Icon(Icons
                                                      .shopping_bag_outlined),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
