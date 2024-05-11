import 'package:flutter/material.dart';

class Homeitem2 extends StatefulWidget {
  Homeitem2({super.key});

  @override
  State<Homeitem2> createState() => _CourseItem2State();
}

class _CourseItem2State extends State<Homeitem2> {
  bool b0 = false;
  int intg = 500;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return Padding(
      padding: EdgeInsets.only(
          right: 8 * width,
          top: 5 * height,
          bottom: 5 * height,
          left: 1 * width),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'cordp');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 1.5,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          height: 79 * height,
          width: 312 * width,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Row(children: [
                  Container(
                    width: 100 * width,
                    height: 60 * height,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: ClipOval(
                        child: SizedBox(
                          width: 70 * width,
                          height: 70 * width,
                          child: Image.asset(
                            'assets/images (1).jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 53 * height,
                    width: 167 * width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              'Course Title',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                height: 1.9,
                                color: Color(0xFF2D3D51),
                                fontSize: 10 * width,
                                fontFamily: "AeonikTRIAL",
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Text(
                              'Wee ya l ikhwa ana howa chikour cinoo!',
                              style: TextStyle(
                                height: 1,
                                color: Color.fromARGB(131, 49, 54, 56),
                                fontSize: 10 * width,
                                fontFamily: "AeonikTRIAL",
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: 32,
                right: 8,
                child: CircleAvatar(
                  child: Center(
                    child: Text(
                      '$intg',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  backgroundColor: Color(0xFF4A85CE),
                  radius: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
