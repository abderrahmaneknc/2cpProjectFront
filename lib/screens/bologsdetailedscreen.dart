import 'package:flutter/material.dart';

import 'package:flutter/services.dart'; // Import services library

class BlogsDetailScreen extends StatefulWidget {
  BlogsDetailScreen({super.key});

  @override
  State<BlogsDetailScreen> createState() => _BlogsDetailScreenState();
}

class _BlogsDetailScreenState extends State<BlogsDetailScreen> {
  bool b1 = false;
  bool b2 = false;
  bool b0 = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/coolest-pictures-88c269e953ar0aw4.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 250,
                  child: Text(
                    'Digital Despach: Tec inshights',
                    style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        height: 24 * height,
                        width: width * 24,
                        'assets/664248f7b8c1f11b41446b0b7e01be16.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5 * width,
                    ),
                    const Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                    SizedBox(
                      width: 5 * width,
                    ),
                    Image.asset(
                      height: 20 * height,
                      width: width * 20,
                      'assets/Clock.png',
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      '5days',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: const BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        width: double.infinity,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFFFBFBFB),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                  style: TextStyle(
                                    height: 1.7,
                                    fontFamily: "AeonikTRIAL",
                                  ),
                                  'Ance and engineering, and ennce and engineeringns and operations. These machines opened the door for the realization of AI'),
                              SizedBox(
                                height: 85,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 24 * height,
            left: 24 * width,
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: 13 * width,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
          Positioned(
            top: 24 * height,
            left: 305 * width,
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: 13 * width,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
          Positioned(
            top: height * 530,
            left: width * 103,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              height: 45,
              width: width * 156,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: SizedBox(
                  height: 21 * height,
                  width: 136 * width,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          b0 = !b0;
                        }),
                        child: Image.asset(
                          b0
                              ? 'assets/icons8-bookmark-48.png'
                              : 'assets/icons8-bookmark-24.png',
                          height: 16 * height,
                          width: width * 16,
                        ),
                      ),
                      SizedBox(
                        width: 21 * width,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          if (!b2 & !b1) {
                            b1 = !b1;
                          } else if (!b1 & b2) {
                            b1 = !b1;
                            b2 = !b2;
                          } else if (b1 & !b2) {
                            b1 = !b1;
                          }
                        }),
                        child: Image.asset(
                          b1
                              ? 'assets/icons8-bas-3-50 (2).png'
                              : 'assets/icons8-curved-arrow-down-50.png',
                          height: 16 * height,
                          width: width * 16,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 4 * width,
                      ),
                      Text(
                        '16K',
                        style: TextStyle(fontSize: 11 * height),
                      ),
                      SizedBox(
                        width: 4 * width,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          if (!b2 & !b1) {
                            b2 = !b2;
                            b1 = false;
                          } else if (!b2 & b1) {
                            b1 = !b1;
                            b2 = !b2;
                          } else if (b2 & !b1) {
                            b2 = !b2;
                          }
                        }),
                        child: Image.asset(
                          b2 ? 'assets/upblack.png' : 'assets/upwhite.png',
                          fit: BoxFit.contain,
                          height: 16 * height,
                          width: width * 16,
                        ),
                      ),
                      SizedBox(
                        width: 21 * width,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/icons8-partager-30.png',
                          fit: BoxFit.contain,
                          height: 16 * height,
                          width: width * 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
