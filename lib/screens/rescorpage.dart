import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../items/courseitem.dart';
import '../items/courseitem2.dart';
import '../items/resitem.dart';
import '../items/txtfdbutton.dart';

class ResCorPage extends StatefulWidget {
  const ResCorPage({Key? key}) : super(key: key);

  @override
  State<ResCorPage> createState() => _ResCorPageState();
}

class _ResCorPageState extends State<ResCorPage> {
  bool b = true;
  bool res = true;
  ScrollController _scrollController = ScrollController();
  bool _showAppbar = true;
  double _scrollPosition = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_scrollPosition < _scrollController.position.pixels) {
          setState(() {
            _showAppbar = false;
          });
        }
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_scrollPosition > _scrollController.position.pixels) {
          setState(() {
            _showAppbar = true;
          });
        }
      }
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                snap: _showAppbar,
                pinned: _showAppbar,
                floating: true,
                automaticallyImplyLeading: false,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: height, left: 24 * width, right: 22 * width),
                        child: Row(
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height, left: 24 * width, right: 22 * width),
                        child: Row(
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
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                if (b) resoursespage(height: height, width: width),
                if (!b) coursespage(height: height, width: width),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class resoursespage extends StatelessWidget {
  const resoursespage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: height, left: 24 * width, right: 22 * width),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 25 * height,
                  child: Center(
                    child: Text(
                      'Explore The Res',
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
                  width: width * 90,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 18 * height,
                      width: 18 * width,
                      child: Image.asset(
                          height: 18 * height,
                          width: 19 * width,
                          'assets/Tune (1).jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5 * height,
            ),
            SizedBox(
              height: height * 500,
              child: GridView.builder(
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 5 * height,
                    crossAxisSpacing: 12 * width,
                    maxCrossAxisExtent: 145 * width),
                itemCount: 80, // Total number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  return Ressourcesitem();
                },
              ),
            ),
            SizedBox(
              height: 1 * height,
            ),
          ],
        ),
      ),
    );
  }
}

class coursespage extends StatelessWidget {
  const coursespage({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.0 * height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: height, left: 24 * width, right: 22 * width),
                child: SizedBox(
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
              ),
              SizedBox(
                height: 5 * height,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24 * width),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0 * width),
                        child: SizedBox(
                          height: 160 * height,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => CourseItem(),
                            itemCount: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: height, left: 24 * width, right: 22 * width),
          child: SizedBox(
            width: width * 165,
            height: 25 * height,
            child: Center(
              child: Text(
                'Saved Courses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 19, 21, 22),
                  fontSize: 22 * width,
                  fontFamily: "AeonikTRIAL",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10 * height,
        ),
        Center(
          child: Column(
            children: List.generate(40, (index) => CourseItem2()),
          ),
        ),
      ],
    );
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
