import 'package:flutter/material.dart';

import '../items/courseitem.dart';
import '../items/courseitem2.dart';
import '../items/txtfdbutton.dart';
import 'rescorpage.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool b = true;
  bool res = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: Padding(
          padding:
              EdgeInsets.only(top: height, left: 16 * width, right: 16 * width),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 269 * width,
                      height: 40 * height,
                      child: SearchBar(height: height),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20 * height,
                        bottom: 20 * height,
                        left: 18 * width,
                      ),
                      child: NotifIcon(height: height, width: width),
                    ),
                  ],
                ),
                coursespage(height: height, width: width),
                // Add other widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class coursespage extends StatelessWidget {
  const coursespage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.0 * height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Most active',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 19, 21, 22),
                      fontSize: 22 * width,
                      fontFamily: "AeonikTRIAL",
                    ),
                  ),
                  SizedBox(
                    width: 165 * width,
                  ),
                  Image.asset(
                      height: 18 * height,
                      width: 19 * width,
                      'assets/Tune (1).jpg'),
                ],
              ),
              SizedBox(
                height: 5 * height,
              ),
              Text(
                'Most valuable members with the highest points',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 5 * height,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 160 * height,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => CourseItem(),
                        itemCount: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              'Saved Courses',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 19, 21, 22),
                fontSize: 22 * width,
                fontFamily: "AeonikTRIAL",
              ),
            ),
            SizedBox(
              width: 130 * width,
            ),
            Image.asset(
                height: 18 * height, width: 19 * width, 'assets/Tune (1).jpg'),
          ],
        ),
        SizedBox(
          height: 5 * height,
        ),
        Text(
          'explore creative and intelligent people CVS',
          style: TextStyle(
            fontFamily: "AeonikTRIAL",
            fontSize: 12,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(
          height: 20 * height,
        ),
        SizedBox(
          height: 250 * height,
          child: ListView.builder(
            itemBuilder: (context, index) => CourseItem2(),
            itemCount: 40,
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFieldbt(
      fixed: false,
      frontic: Icons.search,
      height: 1 * height,
      hinttext: 'What are you looking for',
      notshow: false,
    );
  }
}
