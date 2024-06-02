import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:prj/screens/add_skills.dart';

import 'staticmethods.dart';

// ignore: must_be_immutable
class SkillsItem extends StatelessWidget {
  SkillsItem(
      {super.key,
      required this.skil,
      required this.get,
      this.ineditpage,
      this.itemnumber});

  late String skil, get;
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
              builder: (context) => AddSkills(theediteditemnumber: itemnumber),
            ),
          );
      },
      child: SizedBox(
      
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.0 * width),
                  child: Text(
                    skil,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 15 * width,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6 * height,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 34,
                      width: width * 37,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/depositphotos_153083628-stock-photo-businesspeople-working-at-desk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9.0 * height),
                      child: Text(
                        get,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1,
                          fontFamily: "AeonikTRIAL",
                          fontSize: 15 * width,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            if (ineditpage == true)
              Positioned(
                top: height * 10,
                left: 279 * width,
                child: IconButton(
                  iconSize: 18 * width,
                  icon: Icon(Icons.delete_outline_sharp),
                  onPressed: () {
                    StaticMethods.deleteItem('S', context, itemnumber!);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
