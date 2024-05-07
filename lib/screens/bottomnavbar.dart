import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

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
      backgroundColor: Color(0xFFFBFBFB),
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
              top: 342 * height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
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
                            child: Image.asset(
                              'assets/Customer.png',
                              fit: BoxFit.cover,
                              height: 21 * height,
                              width: 21 * width,
                            ),
                            backgroundColor: const Color(0xFF2D3D51),
                          ),
                          SizedBox(
                            width: 10 * width,
                          ),
                          Text(
                            'Share your profile',
                            style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xFF2D3D51),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7 * height,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'addBlog');
                    },
                    child: AnimatedContainer(
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
                            child: Image.asset(
                              'assets/Vector.png',
                              fit: BoxFit.cover,
                              height: 16 * height,
                              width: 17 * width,
                            ),
                            backgroundColor: const Color(0xFF2D3D51),
                          ),
                          SizedBox(
                            width: 10 * width,
                          ),
                          Text(
                            'add your blog',
                            style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xFF2D3D51),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7 * height,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
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
                            child: Image.asset(
                              'assets/Group (2).png',
                              fit: BoxFit.cover,
                              height: 16 * height,
                              width: 20 * width,
                            ),
                            backgroundColor: const Color(0xFF2D3D51),
                          ),
                          SizedBox(
                            width: 10 * width,
                          ),
                          Text(
                            'add your resourses',
                            style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xFF2D3D51),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7 * height,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
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
                            child: Image.asset(
                              'assets/Group (2).png',
                              fit: BoxFit.cover,
                              height: 16 * height,
                              width: 20 * width,
                            ),
                            backgroundColor: const Color(0xFF2D3D51),
                          ),
                          SizedBox(
                            width: 10 * width,
                          ),
                          Text(
                            'add your live courses',
                            style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: const Color(0xFF2D3D51),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 56 * height * 0.87,
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
                width: 0.1,
              ),
              InkWell(
                child: Container(
                  height: 35 * height * 0.87,
                  width: 70 * width * 0.87,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons8-accueil-48.png',
                        fit: BoxFit.cover,
                        height: 24 * height * 0.87,
                        width: 24 * width * 0.87,
                      ),
                      SizedBox(
                        height: 11 * height * 0.87,
                        width: 23 * width * 0.87,
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 9 * 0.87,
                              height: 1),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  _onItemTapped(0);
                },
              ),
              InkWell(
                child: Container(
                  height: 32 * height * 0.87,
                  width: 70 * width * 0.87,
                  child: Column(
                    children: [
                      Image(
                        height: 20 * height * 0.87,
                        width: 20 * width * 0.87,
                        image: Svg('assets/Group.svg'),
                      ),
                      SizedBox(
                        height: 9 * width * 0.87,
                        child: Text(
                          'Blogs',
                          style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              fontWeight: FontWeight.bold,
                              fontSize: 9 * 0.87,
                              height: 1),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  _onItemTapped(1);
                },
              ),
              SizedBox(width: 5 * width),
              InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: const Color(0xFF2D3D51),
                      ),
                      height: 44 * height * 0.87,
                      width: 44 * width * 0.87,
                      child: Image.asset(
                        'assets/Plus.png',
                        height: 16 * height * 0.87,
                        width: 16 * width * 0.87,
                        fit: BoxFit.scaleDown,
                      )),
                  onTap: () {
                    _toggleContainersVisibility();
                  }),
              SizedBox(width: 5 * width),
              InkWell(
                child: Container(
                  height: 32 * height * 0.87,
                  width: 70 * width * 0.87,
                  child: Column(
                    children: [
                      Image(
                        height: 22 * height * 0.87,
                        width: 22 * width * 0.87,
                        image: Svg(
                          'assets/comment-blog-icon 1.svg',
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          'res/cor',
                          style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 9 * 0.87,
                              height: 1),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  _onItemTapped(2);
                },
              ),
              InkWell(
                child: Container(
                  height: 33 * height * 0.87,
                  width: 70 * width * 0.87,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons8-utilisateur-sexe-neutre-32.png',
                        fit: BoxFit.contain,
                        height: 22 * height * 0.87,
                        width: 23 * width * 0.87,
                      ),
                      SizedBox(
                        height: 11 * height * 0.87,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              fontFamily: "AeonikTRIAL",
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 10 * 0.87,
                              height: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  _onItemTapped(3);
                },
              ),
              SizedBox(
                width: 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
