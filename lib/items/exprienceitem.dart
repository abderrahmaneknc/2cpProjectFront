import 'package:flutter/material.dart';
import 'package:prj/screens/add_experiences.dart';

// ignore: must_be_immutable
class ExprianceItem extends StatelessWidget {
  ExprianceItem(
      {super.key,
      required this.title,
      required this.companyname,
      required this.emplname,
      required this.location,
      required this.startdate,
      required this.enddate,
      this.ineditpage,
      this.itemnumber});

  late String title, emplname, companyname, location, startdate, enddate;
  bool? ineditpage;
  int? itemnumber;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SizedBox(
      height: 60 * height,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: height * 38,
            width: width * 38,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
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
              height: height * 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w700,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 13 * height,
                    ),
                  ),
                  SizedBox(
                    height: 4 * height,
                  ),
                  Text(
                    companyname,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * height,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    '$startdate - $enddate',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * height,
                      color: Color.fromARGB(255, 93, 88, 88),
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 11 * height,
                      color: Color.fromARGB(255, 93, 88, 88),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (ineditpage == true)
            Positioned(
              left: 280 * width,
              child: IconButton(
                iconSize: 16 * width,
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AddExperiences(theediteditemnumber: itemnumber),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
