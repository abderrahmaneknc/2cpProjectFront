import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../items/mainclass.dart';

class ThreeTabs extends StatefulWidget {
  @override
  _ThreeTabsState createState() => _ThreeTabsState();
}

class _ThreeTabsState extends State<ThreeTabs> {
  int b = 1;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFBFBFB),
          leading: Padding(
            padding: EdgeInsets.only(left: 25 * width),
            child: CircleAvatar(
              backgroundColor: const Color(0x592D3D51),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Color(0xFF2D3D51),
                ),
              ),
            ),
          ),
          title: Text(
            'Saved',
            style: TextStyle(
              color: const Color(0xFF2D3D51),
              fontSize: 26 * width,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
        ),
        body: Consumer<MainClass>(builder: (context, selectedStringModel, _) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: height * 20, left: 24 * width, right: 22 * width),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          b = 1;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Blogs',
                            style: b == 1
                                ? TextStyle(
                                    fontSize: 12 * width,
                                    color: Color(0xFF2D3D51),
                                    fontFamily: "AeonikTRIAL",
                                  )
                                : TextStyle(
                                    fontSize: 12 * width,
                                    color: Colors.white,
                                    fontFamily: "AeonikTRIAL",
                                  ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: b == 1
                              ? Border.all(
                                  width: 2,
                                  color: Color(0xFF2D3D51),
                                )
                              : null,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: b == 1 ? null : Color(0xFF2D3D51),
                        ),
                        height: 30 * height,
                        width: 100 * width,
                      ),
                    ),
                    SizedBox(
                      width: 6 * width,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          b = 2;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text('Courses',
                              style: b == 2
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
                          border: b == 2
                              ? Border.all(
                                  width: 2,
                                  color: Color(0xFF2D3D51),
                                )
                              : null,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: b == 2 ? null : Color(0xFF2D3D51),
                        ),
                        height: 30 * height,
                        width: 100 * width,
                      ),
                    ),
                    SizedBox(
                      width: 6 * width,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          b = 3;
                        });
                      },
                      child: Container(
                        child: Center(
                          child: Text('Courses',
                              style: b == 3
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
                          border: b == 3
                              ? Border.all(
                                  width: 2,
                                  color: Color(0xFF2D3D51),
                                )
                              : null,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: b == 3 ? null : Color(0xFF2D3D51),
                        ),
                        height: 30 * height,
                        width: 100 * width,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) =>
                      selectedStringModel.SavedBlogs[index],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
