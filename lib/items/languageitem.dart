import 'package:flutter/material.dart';

import 'package:prj/screens/add_language.dart';


// ignore: must_be_immutable
class LanguagesItem extends StatelessWidget {
  LanguagesItem(
      {super.key,
      required this.language,
      required this.prof,
    
      this.ineditpage,
      this.itemnumber});

  late String language, prof;
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
                    language,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 13 * height,
                    ),
                  ),
                  Text(
                    prof,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 10 * height,
                      color: Color.fromARGB(204, 0, 0, 0),
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
                          Addlanguage(theediteditemnumber: itemnumber),
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
