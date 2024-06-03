import 'package:flutter/material.dart';

class NonUserProfile extends StatefulWidget {
  NonUserProfile({super.key});

  @override
  State<NonUserProfile> createState() => _NonUserProfileState();
}

class _NonUserProfileState extends State<NonUserProfile> {
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
                'assets/360_F_708477508_DNkzRIsNFgibgCJ6KoTgJjjRZNJD4mb4.jpg',
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
                left: 115 * width,
                child: const Column(
                  children: [
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
              top: 91,
              left: width * 130,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45 * width,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/animal-children-photography-elena-shumilova-2.jpg'),
                  radius: 42 * width,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 256 * height),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0 * height),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0 * height,
                                  left: 30 * width,
                                  right: 22 * width),
                              child: Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Username',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'Meghar yacine',
                                        style: TextStyle(
                                            fontFamily: "AeonikTRIAL",
                                            fontSize: 13,
                                            height: 1.2),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15.0 * height,
                                  left: 30 * width,
                                  right: 22 * width),
                              child: Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Main Profession',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        'Design',
                                        style: TextStyle(
                                            fontFamily: "AeonikTRIAL",
                                            fontSize: 13,
                                            height: 1.2),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 8.0 * height,
                                  left: 30 * width,
                                  right: 22 * width),
                              child: Wrap(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'About',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 24,
                                        ),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Lorem ipsum dolor sit amet consectetur. Vel quisque porta dignissim proin volutpat nibh faucibus. Faucibus pellentesque massa feugiat diam non sed risus malesuada.',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                ],
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
            Positioned(
              top: 24 * height,
              left: 27 * width,
              child: CircleAvatar(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'btnavbarprofile');
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: 13 * width),
            ),
            Positioned(
              top: 24 * height,
              left: 305 * width,
              child: CircleAvatar(
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: 13 * width),
            ),
          ],
        ),
      ),
    );
  }
}
