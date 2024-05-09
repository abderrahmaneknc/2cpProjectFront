import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homeitem extends StatelessWidget {
  const Homeitem({super.key});

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
        onTap: () {},
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
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              children: [
                Container(
                  child: Container(
                    width: 100 * width,
                    height: 60 * height,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: ClipOval(
                        child: SizedBox(
                          width: 100 * width,
                          height: 100 * width,
                          child: Image.asset(
                            'assets/istockphoto-1367357589-612x612.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
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
                  height: 8 * height,
                ),
                SizedBox(
                  height: 21 * height,
                  width: 121 * width,
                  child: Wrap(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(
                              'abdou',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3D51),
                                fontSize: 16 * width,
                                fontFamily: "AeonikTRIAL",
                              ),
                            ),
                            Text(
                              'ui/ux designer',
                              style: TextStyle(
                                fontFamily: "AeonikTRIAL",
                                fontSize: 10,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      )
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
