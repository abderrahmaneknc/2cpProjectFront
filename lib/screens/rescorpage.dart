import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../items/courseitem.dart';
import '../items/resitem.dart';
import '../items/txtfdbutton.dart';

class ResCorPage extends StatefulWidget {
  const ResCorPage({super.key});

  @override
  State<ResCorPage> createState() => _ResCorPageState();
}

class _ResCorPageState extends State<ResCorPage> {
  bool b = true;
  bool res = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: Padding(
        padding: EdgeInsets.only(
            top: 28 * height, left: 24 * width, right: 24 * width),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                SizedBox(
                  width: 269 * width,
                  height: 40 * height,
                  child: SearchBar(height: height),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20 * height,
                    bottom: 20 * height,
                    left: 18 * width,
                  ),
                  child: NotifIcon(height: height, width: width),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (b == false) b = !b;
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'Ressources',
                        style: b
                            ? TextStyle(
                                fontSize: 12 * width,
                                color: Colors.white,
                                fontFamily: "AeonikTRIAL",
                              )
                            : TextStyle(
                                fontSize: 12 * width,
                                color: Color(0xFF2D3D51),
                                fontFamily: "AeonikTRIAL",
                              ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: b
                          ? null
                          : Border.all(
                              width: 2,
                              color: Color(0xFF2D3D51),
                            ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: b ? Color(0xFF2D3D51) : null,
                    ),
                    height: 40 * height,
                    width: 312 * width / 2,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (b == true) b = !b;
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text('Courses',
                          style: b
                              ? TextStyle(
                                  fontSize: 12 * width,
                                  color: Color(0xFF2D3D51),
                                  fontFamily: "AeonikTRIAL",
                                )
                              : TextStyle(
                                  fontSize: 12 * width,
                                  color: Colors.white,
                                  fontFamily: "AeonikTRIAL",
                                )),
                    ),
                    decoration: BoxDecoration(
                      border: b
                          ? Border.all(
                              width: 2,
                              color: Color(0xFF2D3D51),
                            )
                          : null,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: b ? null : Color(0xFF2D3D51),
                    ),
                    height: 40 * height,
                    width: 312 * width / 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (b)
              SizedBox(
                height: height * 600,
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisSpacing: 12 * height,
                      crossAxisSpacing: 12 * width,
                      maxCrossAxisExtent: 145 * width),
                  itemCount: 6, // Total number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
                    return Ressourcesitem();
                  },
                ),
              ),
            if (!b)
              Padding(
                padding: EdgeInsets.only(top: 12.0 * height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 93,
                      height: 25 * height,
                      child: Center(
                        child: Text(
                          'Live now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 19, 21, 22),
                            fontSize: 22 * width,
                            fontFamily: "AeonikTRIAL",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12 * height,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 170 * height,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => CourseItem(),
                              itemCount: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ]),
        ),
      ),
    ));
  }
}

class NotifIcon extends StatelessWidget {
  const NotifIcon({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 24 * height,
        width: 24 * width,
        child: Image.asset(
          'assets/Notification.png',
          fit: BoxFit.contain,
          height: 24 * height,
          width: 22 * width,
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFieldbt(
      fixed: false,
      frontic: Icons.search,
      height: 1 * height,
      hinttext: 'What are you looking for',
      notshow: false,
    );
  }
}
