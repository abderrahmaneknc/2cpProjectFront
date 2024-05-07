import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

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
          bottom: 10 * height,
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
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1.5,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          height: 137 * height,
          width: 136 * width,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    child: Image.asset(
                      'assets/istockphoto-1367357589-612x612.jpg',
                      width: 129 * width,
                      height: 82 * height,
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  height: 82 * height,
                  width: 129 * width,
                ),
                SizedBox(
                  height: 4 * height,
                ),
                SizedBox(
                  height: 21 * height,
                  width: 121 * width,
                  child: Wrap(
                    children: [
                      Text(
                        'Wee ya l ikhwa ana howa chikour cinoo!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D3D51),
                          fontSize: 10 * width,
                          fontFamily: "AeonikTRIAL",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5 * height),
                SizedBox(
                  height: 20 * height,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 10 * height,
                        width: width * 10,
                        child: Icon(
                          Icons.person,
                          size: 20 * height,
                          color: Color.fromARGB(206, 49, 54, 56),
                        ),
                      ),
                      SizedBox(
                        width: width * 15,
                      ),
                      SizedBox(
                        height: 8 * height,
                        width: 90 * width,
                        child: Wrap(
                          children: [
                            Text(
                              'Jane Cooper',
                              style: TextStyle(
                                height: 1.9,
                                color: Color.fromARGB(206, 49, 54, 56),
                                fontSize: 10 * width,
                                fontFamily: "AeonikTRIAL",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
