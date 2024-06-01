import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../items/cardstat.dart';
import '../items/columnstat.dart';
import '../items/graphe.dart';
import '../items/circlestat.dart';

class Mystat extends StatelessWidget {
  const Mystat({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBFBFB),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: CircleAvatar(
            backgroundColor: const Color(0x592D3D51),
            radius: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: const Color(0xFF2D3D51),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'My Stat',
            style: TextStyle(
              color: Color(0xFF2D3D51),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore your journey and track your progress with our personalized user stats page, providing valuable insights into your activity and contributions within the community.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Points',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Gain valuable insights into your contributions and engagement with our comprehensive points breakdown',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Container(
                      height: 500,
                      width: 500,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 209, 208, 208),
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Stat(
                        dataMap: {
                          "from you blogs": 45,
                          "from yoiu courses": 25,
                          "from your ressources": 30,
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'My Activity Stats',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Gain insights on audience engagement with stats on saves, upvotes, downvotes, and scrolling, revealing the impact of your content.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 209, 208, 208),
                          width: 2.0, // Border width
                        ),
                      ),
                      child: LineChartSample7(
                        spots1: [
                          FlSpot(0, 40),
                          FlSpot(1, 35),
                          FlSpot(2, 45),
                          FlSpot(3, 10),
                          FlSpot(4, 40),
                          FlSpot(5, 60),
                          FlSpot(6, 65),
                          FlSpot(7, 60),
                          FlSpot(8, 40),
                          FlSpot(9, 60),
                          FlSpot(10, 60),
                          FlSpot(11, 70),
                        ],
                        spots2: [
                          FlSpot(0, 70),
                          FlSpot(1, 30),
                          FlSpot(2, 40),
                          FlSpot(3, 20),
                          FlSpot(4, 30),
                          FlSpot(5, 40),
                          FlSpot(6, 50),
                          FlSpot(7, 30),
                          FlSpot(8, 10),
                          FlSpot(9, 80),
                          FlSpot(10, 10),
                          FlSpot(11, 30),
                        ],
                        spots3: [
                          FlSpot(0, 10),
                          FlSpot(1, 20),
                          FlSpot(2, 30),
                          FlSpot(3, 40),
                          FlSpot(4, 50),
                          FlSpot(5, 60),
                          FlSpot(6, 50),
                          FlSpot(7, 40),
                          FlSpot(8, 30),
                          FlSpot(9, 20),
                          FlSpot(10, 10),
                          FlSpot(11, 10),
                        ],
                        spots4: [
                          FlSpot(0, 20),
                          FlSpot(1, 10),
                          FlSpot(2, 60),
                          FlSpot(3, 15),
                          FlSpot(4, 80),
                          FlSpot(5, 90),
                          FlSpot(6, 10),
                          FlSpot(7, 50),
                          FlSpot(8, 30),
                          FlSpot(9, 25),
                          FlSpot(10, 80),
                          FlSpot(11, 31),
                        ],
                        b: 'upvotes',
                        g: 'saves',
                        k: 'downvotes',
                        r: 'scr-perc-avr',
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Users Support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Explore the stats on support investment on you',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Container(
                      height: 225,
                      width: 500,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromARGB(255, 209, 208, 208),
                          width: 2.0, // Border width
                        ),
                      ),
                      child: SupportCard(),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
