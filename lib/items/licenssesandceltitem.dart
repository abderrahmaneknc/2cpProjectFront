import 'package:flutter/material.dart';

import 'package:prj/screens/add_certf.dart';

import 'staticmethods.dart';

// ignore: must_be_immutable
class LisAndCeltItem extends StatelessWidget {
  LisAndCeltItem(
      {super.key,
      required this.name,
      required this.issorg,
      required this.url,
      required this.date,
      this.ineditpage,
      this.itemnumber});

  late String name, url, issorg, date;
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
              builder: (context) => AddCertf(theediteditemnumber: itemnumber),
            ),
          );
      },
      child: SizedBox(
        height: (ineditpage != true) ? 83 * height : height * 53,
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
                    'assets/dbqcvvvv1ye-1-1069x720.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 55 * width,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 6,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        height: 1,
                        fontWeight: FontWeight.w700,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 13 * width,
                      ),
                    ),
                    SizedBox(
                      height: height * 3,
                    ),
                    Text(
                      '$issorg, $url',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 1.3,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 10 * width,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.w600,
                        fontFamily: "AeonikTRIAL",
                        fontSize: 10 * width,
                        color: Color.fromARGB(255, 93, 88, 88),
                      ),
                    ),
                    if (ineditpage != true)
                      SizedBox(
                        height: height * 5,
                      ),
                    if (ineditpage != true)
                      Container(
                        height: height * 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19.5),
                          color:
                              Colors.white, // Set your desired background color
                          border: Border.all(
                            color: Color(0xFF2D3D51), // Blue border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 5 * width,
                            ),
                            Text(
                              'Show Certaficate ',
                              style: TextStyle(
                                color: Color(0xFF2D3D51),
                                fontWeight: FontWeight.w800,
                                fontSize: 11 * width,
                                fontFamily: "AeonikTRIAL",
                              ),
                            ),
                            Icon(
                              Icons.open_in_browser_sharp,
                              size: 15 * width,
                              color: Color(0xFF2D3D51),
                            ),
                            SizedBox(
                              width: 5 * width,
                            ),
                          ],
                        ),
                      )
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
                    StaticMethods.deleteItem('Certf', context, itemnumber!);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
