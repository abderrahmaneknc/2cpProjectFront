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
        onTap: () {
          Navigator.pushNamed(context,'nonuserprofile');
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
          height: 100 * height,
          width: 130 * width,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 76 * width, // Adjust width and height as needed
                      height: 64 * height,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images (1).jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'abdou',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3D51),
                              fontSize: 16 *
                                  width, // Assuming width is defined somewhere
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
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  child: Center(
                    child: Text(
                      '22',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  backgroundColor: Color(0xFF4A85CE),
                  radius: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
