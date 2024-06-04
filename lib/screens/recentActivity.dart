import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prj/items/elvButton.dart';
import 'package:prj/items/numberbox.dart';
import 'package:prj/items/rectanglebutton.dart';

import '../items/filter2.dart';
import '../items/homeitem.dart';
import '../items/homeitem2.dart';
import '../items/pointscard.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 60),
                        const SizedBox(height: 12),
                        coursespage(height: 2, width: 2)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PointsCard(
                colorr: const Color(0xFF4A85CE),
              ),
            ],
          ),
        ),
      ],
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
          padding: const EdgeInsets.only(right: 26.0),
          child: Row(
            children: [
              Text(
                'recent Activity',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 19, 21, 22),
                  fontSize: 10 * width,
                  fontFamily: "AeonikTRIAL",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8 * height,
        ),
        Column(
          children: List.generate(10, (index) => Homeitem2()),
        ),
      ],
    );
  }
}
