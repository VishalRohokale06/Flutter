import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    //int num = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w400),
          ),
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 400,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Nike Air Force 1 ''07",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 104, 97, 246)),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "SHOES",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 104, 97, 246)),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "FOOTWARE",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const SizedBox(
              width: 380,
              child: Text(
                "With the iconic style and legendry comfort , the AF-1 was made to be worn on repeat. This iteration puts a fresh spin an the hoopclassic  with  scrip  leather , eraachochoing '80s construction and reflective-design Swoosh logos.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  //width: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 50),
                  ),
                  onTap: () {
                    num--;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      //color: Colors.grey,
                      border: Border.all()),
                  child: Center(
                    child: Text(
                      "$num",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: const Text(
                    "+",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onDoubleTap: () {
                    num++;
                    setState(() {});
                  },
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       num--;
                //     },
                //     child: const Icon(Icons.remove)),
                // const SizedBox(
                //   width: 20,
                // ),
                // SizedBox(
                //   width: 50,
                //   child: Text(
                //     "$num",
                //     style: const TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),
                // ElevatedButton(
                //     onPressed: () {
                //       num++;
                //       setState(() {});
                //     },
                //     child: const Icon(Icons.add)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 104, 97, 246)),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    "PURCHASE",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
