import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseDP extends StatelessWidget {
  const CourseDP({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 250,
                  child: Text(
                    'Course Name',
                    style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 26 * height),
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
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Decription',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 51, 68),
                                  fontSize: 22 * width,
                                  fontFamily: "AeonikTRIAL",
                                ),
                              ),
                              SizedBox(
                                width: 311 * width,
                                child: Text(
                                  'evhjqdsvqub hjbv izvziu oizvezl hoizvnzo iuvbiuz iu oezhezo ezij',
                                  style: TextStyle(
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(209, 49, 54, 56),
                                    fontSize: 12 * width,
                                    fontFamily: "AeonikTRIAL",
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25 * height,
                              ),
                              Text(
                                'Links',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 51, 68),
                                  fontSize: 22 * width,
                                  fontFamily: "AeonikTRIAL",
                                ),
                              ),
                              SizedBox(
                                width: 311 * width,
                                child: Text(
                                  'evhjqdsvqub hjbv izvziu oizvezl hoizvnzo iuvbiuz iu oezhezo ezij',
                                  style: TextStyle(
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(209, 49, 54, 56),
                                    fontSize: 12 * width,
                                    fontFamily: "AeonikTRIAL",
                                  ),
                                ),
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
        ],
      ),
    ));
  }
}
