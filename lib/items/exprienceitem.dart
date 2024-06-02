import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prj/items/staticmethods.dart';
import 'package:prj/screens/add_experiences.dart';
import 'package:prj/screens/editpage.dart';

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

    return InkWell(
      onTap: () {
        if (ineditpage == true)
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AddExperiences(theediteditemnumber: itemnumber),
            ),
          );
      },
      child: SizedBox(
        height: 60 * height,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 4 * height,
              child: SizedBox(
                height: height * 42,
                width: width * 46,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/most-beautiful-places-in-the-world-4-jpeg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 55 * width,
              child: SizedBox(
                height: height * 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 4.5,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 13 * width,
                      ),
                    ),
                    SizedBox(
                      height: 2 * height,
                    ),
                    Text(
                      emplname,
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
                    Text(
                      location,
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
                    StaticMethods.deleteItem('E', context, itemnumber!);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditPage(
                          editedpagenumber: 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
