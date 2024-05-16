import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExprianceItem extends StatelessWidget {
  ExprianceItem({
    super.key,
    required this.title,
    required this.companyname,
    required this.emplname,
    required this.location,
    required this.startdate,
    required this.enddate,
  });

  late String title, emplname, companyname, location, startdate, enddate;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SizedBox(
      height: 51 * height,
      width: 154 * width,
      child: Stack(
        children: [
          SizedBox(
            height: height * 38,
            width: width * 38,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/erwinsmithoo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 50 * width,
            child: SizedBox(
              width: 108 * width,
              height: height * 61,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 9 * height,
                    ),
                  ),
                  Text(
                    companyname,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 8 * height,
                      color: Color.fromARGB(255, 93, 88, 88),
                    ),
                  ),
                  Text(
                    '$startdate - $enddate',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 7 * height,
                      color: Color.fromARGB(255, 93, 88, 88),
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 7 * height,
                      color: Color.fromARGB(255, 93, 88, 88),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
