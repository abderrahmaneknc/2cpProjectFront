import 'package:flutter/material.dart';

import 'package:prj/screens/add_education.dart';

import 'staticmethods.dart';

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

    return InkWell(
      onTap: () {
        if (ineditpage == true)
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AddEducation(theediteditemnumber: itemnumber),
            ),
          );
      },
      child: SizedBox(
        height: 51 * height,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: height * 4,
              child: SizedBox(
                height: height * 42,
                width: width * 46,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/1621980971547.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 55 * width,
              child: SizedBox(
                height: height * 61,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 6,
                    ),
                    Text(
                      school,
                      style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.w700,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 13 * width,
                      ),
                    ),
                    SizedBox(
                      height: 3 * height,
                    ),
                    Text(
                      '$degree, $fieldofstudy',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 1.3,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 10 * width,
                      ),
                    ),
                    Text(
                      '$startdate - $enddate',
                      style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.w600,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 10 * width,
                        color: Color.fromARGB(255, 93, 88, 88),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (ineditpage == true)
              Positioned(
                top: height * 10,
                left: 279 * width,
                child: IconButton(
                  iconSize: 18 * width,
                  icon: Icon(Icons.delete_outline_sharp),
                  onPressed: () {
                    StaticMethods.deleteItem('ED', context, itemnumber!);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
