import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      } else {
        // Loop back to the first page without animation
        _currentPage = 0;
        _pageController.jumpToPage(_currentPage);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        leading: Image.asset(
          "assets/icon1.png",
          scale: 6,
        ),
        leadingWidth: 70,
        backgroundColor: Colors.black12,
        actions: const [
          Icon(
            Icons.search_rounded,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.square, size: 30, color: Colors.white),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 85, 38, 21))),
                    child: const Text(
                      "TV shows",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 85, 38, 21))),
                    child: const Text(
                      "Movies",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 85, 38, 21))),
                    child: const Row(
                      children: [
                        Text(
                          "Categories ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //         SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 8, right: 8),
            //         child: SizedBox(
            //           height: 500,
            //           width: 300,
            //           child: PageView(
            //             controller: _pageController,
            //             children: [
            //               Image.asset("assets/dc.jpg"),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 8, right: 8),
            //         child: SizedBox(
            //           height: 500,
            //           width: 300,
            //           child: Image.asset("assets/netflixPoster.jpg"),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 8, right: 8),
            //         child: SizedBox(
            //           height: 500,
            //           width: 300,
            //           child: Image.asset("assets/nsth.jpg"),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            ////

            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    // Automatic poster carousel
                    SizedBox(
                      height: 500,
                      width: 350, // Adjust height as needed
                      child: PageView(
                        controller: _pageController,
                        children: [
                          Image.asset("assets/netflixMainPoster.jpg",
                              fit: BoxFit.cover),
                          Image.asset("assets/netflixPoster.jpg",
                              fit: BoxFit.cover),
                          Image.asset("assets/nsth.jpg", fit: BoxFit.cover),
                          Image.asset("assets/netflixMainPoster.jpg",
                              fit: BoxFit.cover),
                          Image.asset("assets/netflixPoster.jpg",
                              fit: BoxFit.cover),
                          Image.asset("assets/nsth.jpg", fit: BoxFit.cover)
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Filmfare Award Winners & Nominees",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/en/a/a8/Mai_A_Mother%27s_Rage_poster.jpg"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                "https://resizing.flixster.com/xqKdT9XmzQMz8EzItv4YO0d5u_E=/fit-in/705x460/v2/https://resizing.flixster.com/HpZiOGQsmDEn12M6ZC4Kb_Okjlg=/ems.cHJkLWVtcy1hc3NldHMvdHZzZWFzb24vZmE4MmUwODgtNjkxMy00ZDc4LThkNTktY2NjOTcwNGE5OWUyLmpwZw=="),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                "https://dnm.nflximg.net/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABYUmDgZOopPAGuHUJiuIzHeDCO3WYpydNrgEVi1etcc9cxEkivdTCc0XtjTs_C1iAexv-lY-Ke12p6XweSKDDmQZvA83sQg7xw-LBHaRMHBah8WGM2m64UYhjYyY0uK0-REO_Q.jpg?r=90a"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeXNSLzr0PcW0lqIs3Eco0xO1aWmnb7t9YLsA9x2BWN_Vp7QvpxX_Er1k5gvTyYxIQ0dasxknMf_IrTIi6p9kdwHbiv9LV7NrzJ0S67R9kmu6GnDIFzGwZ9CNRopPZ7pv6o1dVOX_SHsxgWMIVvsDjIErzM.jpg?r=54e"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                "https://dnm.nflximg.net/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABW5fZHKDO28fwcNqmCX-2330SJdidY_8DpXy0HPXrmjO8dJsjKOZm3jQc1766LgqcLeMFsLsywbRUeHxWRpjUI9JUEkdNN6hvVa_KPDzPvIBRzEzOEPkxMIO9mx3iK1-mXdPsg.jpg?r=0bd"),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: const Row(
                        children: [
                          Text(
                            "Top 10 movies in India Today",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BZTU4YTUzNGMtZjUyZC00MWU3LWFiZmItMmIwMDA5YmViNGU3XkEyXkFqcGc@._V1_QL75_UX140_CR0,0,140,207_.jpg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://pbs.twimg.com/media/GY7xXy6XsAAHTfY.jpg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BNGI5MjMzODQtMDlhMi00MWU0LTk0MzAtZmY4ZmU4NzU1MmY5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BZDEwZjRlYzMtNDc2Ny00Y2Q4LTk1NmQtYmU3NzZhMzNiZWI4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_9Rhd0TKD_plVMIsXDFFxLt9yGkZDNs-eTw&s"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Text(
                            "Only on Netflix",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://english.mathrubhumi.com/image/contentid/policy:1.9898490:1726564072/GWoDAklW0AA311N.jpg?=b84e6ff&f=4x3&w=1080&q=0.8"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ27Oxn-2llKTaW2ohslM9v_3L10o0Miusq7w&s"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.network(
                                  "https://m.media-amazon.com/images/M/MV5BY2JlNTE1MDEtYmFjZi00Nzg0LWJkM2UtYmU2OTU5NDQ2ODZmXkEyXkFqcGc@._V1_.jpg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://cinetown.s3.ap-south-1.amazonaws.com/webseries/poster/1717253347.jpeg"),
                            ),
                            SizedBox(
                              height: 200,
                              width: 200,
                              //color: Colors.amber,
                              child: Image.network(
                                  "https://assets.gadgets360cdn.com/pricee/assets/product/202206/she_season_2_poster_1655270015.jpeg"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Text(
                            "Made in India",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            //color: Colors.amber,
                            child: Image.network(
                                "https://images.ctfassets.net/4cd45et68cgf/1lErVWwgzemgUioYjkr40T/2e91624eca944cd3de49a3459da9a209/EN_IN_MAHARAJ_KA01_4x5_PRE.jpg"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            //color: Colors.amber,
                            child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BOGMyOWU0MzAtNWYyZi00NWE4LWIwNGUtODMxYjdjY2Y4MTU3XkEyXkFqcGc@._V1_.jpg"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            //color: Colors.amber,
                            child: Image.network(
                                "https://m.media-amazon.com/images/M/MV5BY2QyNjUyN2MtMjRiNC00ZmFiLTg0YjQtNTQ3MWQ3MmQ4NWIzXkEyXkFqcGc@._V1_.jpg"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            //color: Colors.amber,
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/en/e/ea/Heeramandi_Poster.jpg"),
                          ),
                          SizedBox(
                            height: 200,
                            width: 200,
                            //color: Colors.amber,
                            child: Image.network(
                                "https://assets.gadgets360cdn.com/pricee/assets/product/202209/jamtara_season_2_poster_1663833056.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
