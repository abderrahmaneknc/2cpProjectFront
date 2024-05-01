import 'package:flutter/material.dart';

class BlogsDetailScreen extends StatelessWidget {
  const BlogsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
        child: Scaffold(
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
          const Padding(
            padding: EdgeInsets.only(top: 130.0, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    'Digital Despach: Tec inshights',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: AutofillHints.addressCity,
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
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.abc,
                      color: Colors.white,
                    ),
                    Text(
                      'Jane cooper .5days',
                      style: TextStyle(color: Colors.white),
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
                        color: Colors.white,
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
                              style: TextStyle(height: 1.7),
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: 13 * width),
          ),
          Positioned(
            top: 24 * height,
            left: 305 * width,
            child: CircleAvatar(
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: 13 * width),
          ),
          Positioned(
            top: height * 565,
            left: width * 103,
            child: Container(
              child: Row(children: [
                SizedBox(),
              ],),
              decoration: BoxDecoration(
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
              height: 40,
              width: width * 150,
            ),
          )
        ],
      ),
    ));
  }
}
