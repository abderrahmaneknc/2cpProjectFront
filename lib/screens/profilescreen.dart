import 'package:flutter/material.dart';

import 'package:prj/items/clickbutton.dart';
import 'package:prj/screens/profilrDialogue.dart';

import 'edahabia.dart';
import 'recentActivity.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 291 * height,
              child: Image.asset(
                'assets/images (1).jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: 24 * height,
              left: 24 * width,
              child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: 13 * width,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'btnavbarhome');
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  )),
            ),
            Positioned(
                top: 24 * height,
                left: 108 * width,
                child: Column(
                  children: const [
                    Text(
                      'Meghar yacine',
                      style: TextStyle(
                          fontFamily: "AeonikTRIAL",
                          fontSize: 20,
                          height: 1,
                          color: Colors.white),
                    ),
                    Text(
                      'Flutter Devlopper',
                      style: TextStyle(
                          fontFamily: "AeonikTRIAL",
                          fontSize: 12,
                          height: 1,
                          color: Color.fromARGB(236, 255, 255, 255)),
                    )
                  ],
                )),
            Positioned(
              top: 24 * height,
              left: 305 * width,
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: 13 * width,
                child: NotifIcon(height: height, width: width),
              ),
            ),
            Positioned(
                top: 91,
                left: width * 130,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45 * width,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/664248f7b8c1f11b41446b0b7e01be16.jpg'),
                    radius: 42 * width,
                  ),
                )),
            Positioned(
              top: 200 * height,
              left: 98 * width,
              child: SizedBox(
                width: 28 * width,
                height: 28 * height,
                child: Image(
                  image: AssetImage('assets/Group 76.png'),
                ),
              ),
            ),
            Positioned(
              top: 200 * height,
              left: 142 * width,
              child: SizedBox(
                width: 28 * width,
                height: 28 * height,
                child: Image(
                  image: AssetImage('assets/Group 77 (1).png'),
                ),
              ),
            ),
            Positioned(
              top: 200 * height,
              left: 189 * width,
              child: SizedBox(
                width: 28 * width,
                height: 28 * height,
                child: Image(
                  image: AssetImage('assets/Group 78 (1).png'),
                ),
              ),
            ),
            Positioned(
              top: 200 * height,
              left: 229 * width,
              child: SizedBox(
                width: 28 * width,
                height: 28 * height,
                child: Image(
                  image: AssetImage('assets/Group 79 (1).png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 266.0 * height),
              child: Container(
                height: 375 * height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 22.0 * height),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 7.0 * height),
                        child: SizedBox(
                          height: 39 * height,
                          width: 311 * width,
                          child: ClickButton(
                            borderclr: Colors.grey,
                            text: 'ViewProfile',
                            showborder: true,
                            fill: Colors.white,
                            txtclr: const Color(0xFF2D3D51),
                            fnct: () {
                              Navigator.pushNamed(context, 'viewprofile');
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0 * height),
                        child: SizedBox(
                          height: 39 * height,
                          width: 311 * width,
                          child: ClickButton(
                            borderclr: Colors.grey,
                            text: 'Account Settings',
                            showborder: true,
                            fill: Colors.white,
                            txtclr: const Color(0xFF2D3D51),
                            fnct: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return SingleChildScrollView(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                      ),
                                      child: const RecentActivity(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0 * height),
                        child: SizedBox(
                          height: 39 * height,
                          width: 311 * width,
                          child: ClickButton(
                            borderclr: Colors.grey,
                            text: 'Saved',
                            showborder: true,
                            fill: Colors.white,
                            txtclr: const Color(0xFF2D3D51),
                            fnct: () {
                              Navigator.pushNamed(context, 'threetabs');
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0 * height),
                        child: SizedBox(
                          height: 39 * height,
                          width: 311 * width,
                          child: ClickButton(
                            borderclr: Colors.grey,
                            text: 'Support',
                            showborder: true,
                            fill: Colors.white,
                            txtclr: const Color(0xFF2D3D51),
                            fnct: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 25 * height,
                        ),
                        child: SizedBox(
                          height: 39 * height,
                          width: 311 * width,
                          child: ClickButton(
                            borderclr: Colors.grey,
                            text: 'Log Out',
                            showborder: true,
                            fill: const Color(0xFF2D3D51),
                            txtclr: Colors.white,
                            fnct: () {
                              showSignOutDialog(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ProfileDialogue(
              s1: 'Support our brilliant',
              s2: 'repport',
            );
          },
        );
      },
      child: SizedBox(
        height: 24 * height,
        width: 24 * width,
        child: Image.asset(
          'assets/Group 309.png',
          fit: BoxFit.contain,
          height: 24 * height,
          width: 22 * width,
        ),
      ),
    );
  }
}

void showSignOutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              25.0), // Adjust border radius of the dialog itself
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              25.0), // Border radius of the container inside the dialog
          child: Container(
            color: Color(0xFFFBFBFB),
            padding: EdgeInsets.only(top: 20.0, left: 16, right: 16),
            height: 160,
            width: 270,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Sign out?',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    height: 0.9,
                    fontSize: 16,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Are you sure want to sign out?',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 18.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: const BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0xFF2D3D51),
                          ),
                        ),
                        minimumSize: Size(116, 40), // Adjusted size
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0), // Adjusted padding
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'cancel',
                        style: const TextStyle(
                          color: Color(0xFF2D3D51),
                          fontFamily: "AeonikTRIAL",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2D3D51),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: const BorderSide(
                            style: BorderStyle.solid,
                            color: Color(0xFF2D3D51),
                          ),
                        ),
                        minimumSize: Size(116, 40), // Adjusted size
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0), // Adjusted padding
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'signIn');
                      },
                      child: Text(
                        'Log Out',
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "AeonikTRIAL",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
