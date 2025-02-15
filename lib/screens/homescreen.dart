import 'package:flutter/material.dart';

import '../items/filter2.dart';
import '../items/homeitem.dart';
import '../items/homeitem2.dart';
import '../items/txtfdbutton.dart';

import 'homeDialoge.dart';

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
              EdgeInsets.only(top: height, left: 22 * width, right: 0 * width),
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
                Padding(
                  padding: const EdgeInsets.only(right: 4, left: 4),
                  child: coursespage(height: height, width: width),
                ),
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
              Padding(
                padding: const EdgeInsets.only(right: 26.0),
                child: Row(
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
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                child: Filter2(),
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset(
                          height: 18 * height,
                          width: 19 * width,
                          'assets/Tune (1).jpg'),
                    ),
                  ],
                ),
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
                      height: 145 * height,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Homeitem(),
                        itemCount: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 26.0),
          child: Row(
            children: [
              Text(
                'Our Brilliants',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 19, 21, 22),
                  fontSize: 22 * width,
                  fontFamily: "AeonikTRIAL",
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Filter2(),
                        ),
                      );
                    },
                  );
                },
                child: Image.asset(
                    height: 18 * height,
                    width: 19 * width,
                    'assets/Tune (1).jpg'),
              ),
            ],
          ),
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
        Column(
          children: List.generate(10, (index) => Homeitem2()),
        ),
      ],
    );
  }
}

class NotifIcon extends StatelessWidget {
  const NotifIcon({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Homedialoge(
              s1: 'Notification',
              s2: 'App Dashboard',
            );
          },
        );
      },
      child: SizedBox(
        height: 24 * height,
        width: 24 * width,
        child: Image.asset(
          'assets/Group 309.png',
          fit: BoxFit.contain,
          height: 24 * height,
          width: 22 * width,
        ),
      ),
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

int calculateRank(int points) {
  if (points < 0) {
    throw ArgumentError('Points cannot be negative');
  }

  int rank = 1;
  int pointsNeededForCurrentGroup = 100;
  int pointsNeededForNextRank = 100;

  while (points >= pointsNeededForNextRank) {
    points -= pointsNeededForNextRank;
    rank++;

    if (rank % 10 == 1) {
      pointsNeededForCurrentGroup *= 2;
      pointsNeededForNextRank = pointsNeededForCurrentGroup;
    }
  }

  return rank;
}

/*void main() {
  print(calculateRank(8500)); // Output: 1
}*/
