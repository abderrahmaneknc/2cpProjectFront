import 'package:flutter/material.dart';

class ResoursesDP extends StatelessWidget {
  const ResoursesDP({super.key});

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
              'assets/CLI406.wildlife_photography_awards.SleepingWithDandelionsLewisNewmanBritishWildlifePhotographyAwards-920x691.jpg',
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
            padding: EdgeInsets.only(top: 130.0, left: 24 * width),
            child: SizedBox(
              width: 250,
              child: Text(
                'Name Course',
                style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 22 * width,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
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
                            height: 85,
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
        ],
      ),
    ));
  }
}
