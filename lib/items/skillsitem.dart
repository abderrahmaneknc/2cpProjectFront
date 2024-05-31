import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:prj/screens/add_skills.dart';

// ignore: must_be_immutable
class SkillsItem extends StatelessWidget {
  SkillsItem(
      {super.key,
      required this.skil,
      required this.get,
    
      this.ineditpage,
      this.itemnumber});

  late String skil, emplname, get;
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
              height: height * 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skil,
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
                    emplname,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * height,
                      color: Color.fromARGB(255, 0, 0, 0),
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
                          AddSkills(theediteditemnumber: itemnumber),
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
