import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:prj/blogsscreen.dart';
import 'package:prj/homescreen.dart';
import 'package:prj/profilescreen.dart';
import 'package:prj/rescorpage.dart';

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
                              height: 24 * height,
                              width: 24 * width,
                            ),
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
                              'assets/Vector.png',
                              fit: BoxFit.cover,
                              height: 18 * height,
                              width: 16.6 * width,
                            ),
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
        height: 56 * height,
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
                  height: 35 * height,
                  width: 70 * width,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons8-accueil-48.png',
                        fit: BoxFit.cover,
                        height: 24 * height,
                        width: 24 * width,
                      ),
                      SizedBox(
                        height: 11 * height,
                        width: 27 * width,
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
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
                  height: 31 * height,
                  width: 70 * width,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Group (1).png',
                        fit: BoxFit.cover,
                        height: 21 * height,
                        width: 19 * width,
                      ),
                      SizedBox(
                        height: 9 * width,
                        child: Text(
                          'Blogs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
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
              SizedBox(width: 7 * width),
              InkWell(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: const Color(0xFF2D3D51),
                      ),
                      height: 41 * height,
                      width: 39 * width,
                      child: Image.asset(
                        'assets/Plus.png',
                        height: 16 * height,
                        width: 16 * width,
                        fit: BoxFit.scaleDown,
                      )),
                  onTap: () {
                    _toggleContainersVisibility();
                  }),
              SizedBox(width: 7 * width),
              InkWell(
                child: Container(
                  height: 33 * height,
                  width: 70 * width,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/comment-blog-icon 1.png',
                        fit: BoxFit.contain,
                        height: 22 * height,
                        width: 23 * width,
                      ),
                      SizedBox(
                        child: Text(
                          'res/cor',
                          style: TextStyle(
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
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
                  height: 33 * height,
                  width: 70 * width,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons8-utilisateur-sexe-neutre-32.png',
                        fit: BoxFit.contain,
                        height: 22 * height,
                        width: 23 * width,
                      ),
                      SizedBox(
                        height: 11 * height,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: _currentIndex == 0
                                  ? const Color(0xFF2D3D51)
                                  : null,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
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
