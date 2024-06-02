import 'package:flutter/material.dart';

import 'package:prj/screens/add_language.dart';

import 'staticmethods.dart';

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

    return InkWell(
      onTap: () {
        if (ineditpage == true)
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Addlanguage(theediteditemnumber: itemnumber),
            ),
          );
      },
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      language,
                      style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.w700,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 14 * width,
                      ),
                    ),
                    SizedBox(
                      height: 3 * height,
                    ),
                    Text(
                      prof,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 10 * width,
                        color: Color.fromARGB(204, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (ineditpage == true)
              Positioned(
                left: 279 * width,
                child: IconButton(
                  splashColor: Colors.transparent, // Remove splash color
                  highlightColor: Colors.transparent,
                  iconSize: 18 * width,
                  icon: Icon(Icons.delete_outline_sharp),
                  onPressed: () {
                    StaticMethods.deleteItem('Lang', context, itemnumber!);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
