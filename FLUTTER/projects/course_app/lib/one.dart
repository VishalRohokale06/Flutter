import 'package:course_app/two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(205, 218, 218, 1),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.menu_outlined,
                        size: 26,
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_outlined,
                        size: 26,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to New",
                        style: GoogleFonts.jost(
                            fontSize: 26.98,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      Text(
                        "Educourse",
                        style: GoogleFonts.jost(
                            fontSize: 37,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "    Enter your Keyword",
                            hintStyle: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(143, 143, 143, 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, bottom: 18, top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, right: 8, bottom: 8),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Two(),
                                  ));
                                },
                                child:
                                    SvgPicture.asset("assets/svg/card1.svg")),
                          ),
                          const Spacer(),
                          SvgPicture.asset("assets/svg/card2.svg"),
                        ],
                      ),
                      Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      SvgPicture.asset("assets/svg/img1.svg"),
                                ),
                              ),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child:
                                      SvgPicture.asset("assets/svg/img2.svg"),
                                ),
                              ),
                              Text(
                                "VISUAL",
                                style: GoogleFonts.jost(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child:
                                      SvgPicture.asset("assets/svg/img3.svg"),
                                ),
                              ),
                              Text(
                                "ILLUSTRATON",
                                style: GoogleFonts.jost(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(25, 0, 56, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child:
                                      SvgPicture.asset("assets/svg/img4.svg"),
                                ),
                              ),
                              Text(
                                "PHOTO",
                                style: GoogleFonts.jost(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 1)),
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
