import 'package:flutter/material.dart';

class CourseItem2 extends StatefulWidget {
  CourseItem2({super.key});

  @override
  State<CourseItem2> createState() => _CourseItem2State();
}

class _CourseItem2State extends State<CourseItem2> {
  bool b0 = false;

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
        onTap: () { Navigator.pushNamed(context, 'cordp');},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 4,
                offset: Offset(1, 2),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          height: 79 * height,
          width: 312 * width,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(children: [
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    'assets/squirrel-animal-cute-rodents-47547.jpeg',
                    width: 66 * width,
                    height: 71 * height,
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                height: 71 * height,
                width: 66 * width,
              ),
              SizedBox(
                width: 15 * width,
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
                            fontWeight: FontWeight.w800,
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
              SizedBox(width: 25 * width),
              Padding(
                padding: EdgeInsets.only(bottom: 48.0 * height),
                child: GestureDetector(
                  onTap: () => setState(() {
                    b0 = !b0;
                  }),
                  child: Image.asset(
                    b0
                        ? 'assets/icons8-bookmark-48.png'
                        : 'assets/icons8-bookmark-24.png',
                    height: 16 * height,
                    width: width * 16,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
