import 'package:flutter/material.dart';

import 'package:prj/items/clickbutton.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    List<Widget> goodatlist = [
      gdatitem(gdattxt: 'instagram'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Vedio editing'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Python'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'iui/ux '),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Mobile div'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Cyber Security'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Graphic Design'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Java'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Motion Graphic'),
      SizedBox(
        width: 2,
      ),
      gdatitem(gdattxt: 'Motion Graphic'),
      SizedBox(
        width: 2,
      ),
    ];
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
                'assets/anime-Profile-Pictures.jpg',
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
                child: Column(
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
                          color: const Color.fromARGB(236, 255, 255, 255)),
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
                  radius: 42 * width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(42 * width),
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images.jpg',
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 266 * height),
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
                                  Column(
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
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(Icons.edit),
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
                                  Column(
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
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(Icons.edit),
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
                                      Text(
                                        'About',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 24,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet consectetur. Vel quisque porta dignissim proin volutpat nibh faucibus. Faucibus pellentesque massa feugiat diam non sed risus malesuada.',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0 * height,
                                  left: 30 * width,
                                  right: 22 * width),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'MY Media',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 24,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {},
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '-insta link',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                  Text(
                                    '-Behance link',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                  Text(
                                    '-linkedin link',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                  Text(
                                    '-Git hub link',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "AeonikTRIAL",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5 * height,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'What I am Good At',
                                        style: TextStyle(
                                          fontFamily: "AeonikTRIAL",
                                          fontSize: 23,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        icon: Icon(Icons.add),
                                        onPressed: () {
                                          setState(() {
                                            goodatlist.addAll([
                                              gdatitem(gdattxt: 'heeeelllo'),
                                              SizedBox(width: 2)
                                            ]);
                                            goodatlist.add(SizedBox(width: 2));
                                          });
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      children: goodatlist)
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
                      Navigator.pop(context);
                    },
                    child: Icon(
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
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  radius: 13 * width),
            ),
            Positioned(
              left: (width * 130) - 10,
              top: 200 * height,
              child: SizedBox(
                height: 34 * height,
                width: 117 * width,
                child: ClickButton(
                  text: 'Add Selection',
                  showicon: false,
                  fill: Colors.transparent,
                  txtclr: Colors.white,
                  fnct: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class gdatitem extends StatelessWidget {
  gdatitem({
    super.key,
    required this.gdattxt,
  });

  final String gdattxt;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19.5),
            side: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 18, 56, 87),
                strokeAlign: BorderSide.strokeAlignInside),
          ),
        ),
        enableFeedback: false,
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onPressed: () {},
      child: Text(
        gdattxt,
        style: TextStyle(
          fontSize: 12,
          color: Color.fromARGB(255, 18, 56, 87),
          fontFamily: "AeonikTRIAL",
        ),
      ),
    );
  }
}
