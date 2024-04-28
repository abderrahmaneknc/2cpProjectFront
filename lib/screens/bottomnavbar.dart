import 'package:flutter/material.dart';
import 'package:prj/screens/blogsscreen.dart';
import 'package:prj/screens/homescreen.dart';
import 'package:prj/screens/profilescreen.dart';
import 'package:prj/screens/rescorpage.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  bool showContainers = false;

  final List _pages = [
    MyHome(),
    BlogsScreen(),
    ResCorPage(),
    MyProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _toggleContainersVisibility() {
    setState(() {
      showContainers = !showContainers;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _pages[_currentIndex],
          if (showContainers)
            IgnorePointer(
              ignoring: showContainers ? false : true,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: showContainers ? 0.5 : 1.0,
                child: Container(
                  color: Colors.black87,
                  width: double.infinity,
                  height: double.infinity,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showContainers = false;
                      });
                    },
                    behavior: HitTestBehavior.opaque,
                  ),
                ),
              ),
            ),
          if (showContainers)
            Positioned(
              left: 80 * width,
              top: 355 * height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    duration: Duration(milliseconds: 500),
                    width: 200 * width,
                    height: 48 * height,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * width,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF2D3D51),
                        ),
                        SizedBox(
                          width: 10 * width,
                        ),
                        Text(
                          'Share your profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5 * height,
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    duration: Duration(milliseconds: 500),
                    width: 200 * width,
                    height: 48 * height,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * width,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF2D3D51),
                        ),
                        SizedBox(
                          width: 10 * width,
                        ),
                        Text(
                          'add your blog',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5 * height,
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    duration: Duration(milliseconds: 500),
                    width: 200 * width,
                    height: 48 * height,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * width,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF2D3D51),
                        ),
                        SizedBox(
                          width: 10 * width,
                        ),
                        Text(
                          'add your resourses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5 * height,
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25.0),
                      ),
                    ),
                    duration: Duration(milliseconds: 500),
                    width: 200 * width,
                    height: 48 * height,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * width,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF2D3D51),
                        ),
                        SizedBox(
                          width: 10 * width,
                        ),
                        Text(
                          'add your live courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 58 * height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 1 * width,
              ),
              MaterialButton(
                minWidth: 5 * width,
                child: Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 35,
                    ),
                    Text(
                      'home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10 * width,
                          height: 1),
                    ),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(0);
                },
              ),
              MaterialButton(
                minWidth: 42 * width,
                child: Column(
                  children: [
                    Icon(
                      Icons.call_to_action_outlined,
                      size: 35,
                    ),
                    Text(
                      'blogs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10 * width,
                          height: 1),
                    ),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
              MaterialButton(
                  minWidth: 28 * width,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      color: const Color(0xFF2D3D51),
                    ),
                    height: 44 * height,
                    width: 44 * width,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  onPressed: () {
                    _toggleContainersVisibility();
                  }),
              MaterialButton(
                minWidth: 42 * width,
                child: Column(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      size: 35,
                    ),
                    Text(
                      'res/cor',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10 * width,
                          height: 1),
                    ),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
              MaterialButton(
                minWidth: 42 * width,
                child: Column(
                  children: [
                    Icon(
                      Icons.person_4_outlined,
                      size: 35,
                    ),
                    Text(
                      'profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10 * width,
                          height: 1),
                    ),
                  ],
                ),
                onPressed: () {
                  _onItemTapped(3);
                },
              ),
              SizedBox(
                width: 1 * width,
              )
            ],
          ),
        ),
      ),
    );
  }
}
