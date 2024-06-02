import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../items/cardstat.dart';
import '../items/columnstat.dart';
import '../items/graphe.dart';
import '../items/circlestat.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

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
            'Dashboard',
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
                    'Welcome to our hub, where insights converge and actions unfold, presenting a comprehensive view of our app'
                    's performance and stats.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover the trending topics and sought-after subjects with our curated list of most searched categories.',
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
                          "zerzekkjijiuoyttuytr": 12,
                          "ui": 200,
                          "photo": 12,
                          "public": 20,
                          "appdev": 100,
                          "fuzejfezu": 50,
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Our Brilliants',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Explore the dynamics of engagement with our leaderboard showcasing the most active participants stats.',
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
                      child: Columnstat(
                        names: ['nizar', 'Moha', 'yacine', 'davide', 'abdou'],
                        values: [10, 9, 4, 2, 7],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Blog/Cours/Ress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Track the progress fo adding blogs, resources, and courses, empowering you to stay informed.',
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
                        spots4: [],
                        b: 'blog',
                        g: 'cours',
                        k: 'resc',
                        r: '',
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Explore the stats on support investment in our brilliants.',
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
