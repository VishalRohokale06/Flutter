import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Recomended",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Start a new career",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(0, 91, 135, 1)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Data Science",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(0, 91, 135, 1)),
                      ),
                      child: const Text(
                        "Machine Learning",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(0, 91, 135, 1)),
                      ),
                      child: const Text(
                        "Apache Science",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(0, 91, 135, 1)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Data Science",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ////////////////////////////////////////////////////////////////////////
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 236, 234, 234),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Data Science",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        const Text(
                                          "Loreem ipsum dolor sit amet eget nunc dictum est.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Data Science",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Machine Lear",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 236, 234, 234),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Data Science",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        const Text(
                                          "Loreem ipsum dolor sit amet eget nunc dictum est.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Data Science",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Machine Lear",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 236, 234, 234),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "AI & ML",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        const Text(
                                          "Loreem ipsum dolor sit amet eget nunc dictum est.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Data Science",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Machine Lear",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 236, 234, 234),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Big Data",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        const Text(
                                          "Loreem ipsum dolor sit amet eget nunc dictum est.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Data Science",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Machine Lear",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 236, 234, 234),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Devops",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                                  .withOpacity(0.5)),
                                        ),
                                        const Text(
                                          "Loreem ipsum dolor sit amet eget nunc dictum est.",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Data Science",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                color: Colors.blueGrey
                                                    .withOpacity(0.5),
                                              ),
                                              child: const Text(
                                                "Machine Lear",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
