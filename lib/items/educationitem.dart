import 'package:flutter/material.dart';
import 'package:prj/screens/add_education.dart';


// ignore: must_be_immutable
class EducationItem extends StatelessWidget {
  EducationItem(
      {super.key,
      required this.school,
      required this.degree,
      required this.fieldofstudy,
      required this.startdate,
      required this.enddate,
      this.ineditpage,
      this.itemnumber});

  late String school, fieldofstudy, degree, startdate, enddate;
  bool? ineditpage;
  int? itemnumber;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SizedBox(
      height: 51 * height,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: height * 38,
            width: width * 38,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                    school,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 13 * height,
                    ),
                  ),
                  Text(
                    '$degree,$fieldofstudy',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * height,
                      color: Color.fromARGB(204, 0, 0, 0),
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
                          AddEducation(theediteditemnumber: itemnumber),
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
