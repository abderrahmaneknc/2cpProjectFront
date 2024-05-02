import 'package:flutter/material.dart';

import 'package:flutter/services.dart'; // Import services library

class BlogsDetailScreen extends StatefulWidget {
  BlogsDetailScreen({super.key});

  @override
  State<BlogsDetailScreen> createState() => _BlogsDetailScreenState();
}

class _BlogsDetailScreenState extends State<BlogsDetailScreen> {
  bool b1 = true;
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
      backgroundColor: Color(0xFFFBFBFB),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/anime-Profile-Pictures.jpg',
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
            padding: EdgeInsets.only(top: 130.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    Text(
                      'Jane cooper .5days',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                    Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    Text(
                      'Jane cooper .5days',
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
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFFBFBFB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    width: double.infinity,
                    child: Padding(
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
                              'Artificial intelligence (AI) \n the field of computer science that studies how to create machines and software that can perform tasks that require human intelligence, such as reasoning, \n learning, perception, decision making, and natural language processing. AI has a long and rich his\ntory,\n dating back to ancient times, when philosophers and mathematicians tried to understand the nature and principles of human thought and reasoning. In this text, we will briefly overview some of the major milestones and achievements in the history of AI, from its origins to the present day.The Origins of AI: From Antiquity to the 19th CenturyThe idea of creating artificial beings that can think and act like humans can be traced back to ancient myths and legends, such  the golems of Jewish folklore, the mechanical servants of Hephaestus in Greek mythology, or the automata of Al-Jazari in medieval Islam. These stories reflect the human fascination and curiosity with the possibility of creating intelligent machines.The scientific foundations of AI began to emerge in the fields of logic, mathematics, and philosophy, with the works of thinkers such s Aristotle, Euclid, Descartes, Leibniz, and Boole. These pioneers developed formal systems of reasoning, calculation, and representation, which are essential for the development of AI. They also raised important questions about the nature and limits of human and machine intelligence, such as the mind-body problem, the Turing test, and the Chinese room argument.The birth of modern computers in the 19th and early 20th centuries provided the necessary tools and hardware for implementing AI. The inventions of Charles Babbage, Ada Lovelace, Alan Turing, John von Neumann, and others laid the foundations of computer science and engineering, and enabled the creation of programmable machines that can perform complex calculations and operations. These machines opened the door for the realization of AI'),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
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
                  child: Icon(
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
                  child: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
          Positioned(
            top: height * 565,
            left: width * 103,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: 45,
              width: width * 156,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 16 * height,
                  width: 132 * width,
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
                        width: 12 * width,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          if (!b2 == b1) {
                            b1 = !b1;
                            b2 = b1;
                          } else {
                            b1 = !b1;
                          }
                        }),
                        child: Image.asset(
                          b1
                              ? 'assets/icons8-curved-arrow-down-50.png'
                              : 'assets/icons8-bas-3-50 (2).png',
                          height: 16 * height,
                          width: width * 16,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 10 * width,
                      ),
                      Text(
                        '16K',
                        style: TextStyle(fontSize: 11 * height),
                      ),
                      SizedBox(
                        width: 10 * width,
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          if (!b1 == b2) {
                            b2 = !b2;
                            b1 = b2;
                          } else {
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
                        width: 12 * width,
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
