import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:dotted_line/dotted_line.dart';

class PointsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170,
        width: 270,
        decoration: BoxDecoration(
          color: Color(0xFF2C3E50),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12),
              child: Text(
                'Our Point System',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 20),
              child: Row(
                children: [
                  CircularPercentIndicator(
                    radius: 30.0,
                    lineWidth: 6,
                    percent: 0.82, // 82%
                    center: Text(
                      '82',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    progressColor: Colors.white,
                    backgroundColor: Colors.grey,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1300pts',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '500 Points Till Your Next Level',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: DottedLine(
                dashLength: 10,
                dashGapLength: 5,
                lineThickness: 1,
                dashColor: Colors.white,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 11.0, left: 12),
              child: GestureDetector(
                onTap: () {
                  // Handle the tap event here
                },
                child: Text(
                  "Click To See His Point's Origin",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
