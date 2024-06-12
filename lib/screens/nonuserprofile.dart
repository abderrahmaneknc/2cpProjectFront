import 'package:flutter/material.dart';

import 'package:prj/items/clickbutton.dart';
import 'package:prj/items/fileditem.dart';
import 'package:prj/items/exprienceitem.dart';
import 'package:prj/items/languageitem.dart';
import 'package:prj/items/pointscard.dart';
import 'package:prj/items/skillsitem.dart';
import 'package:provider/provider.dart';

import '../items/educationitem.dart';
import '../items/licenssesandceltitem.dart';
import '../items/mainclass.dart';
import 'profilrDialogue.dart';

class NonUserProfile extends StatefulWidget {
  NonUserProfile({super.key});

  @override
  State<NonUserProfile> createState() => _NonUserProfileState();
}

class _NonUserProfileState extends State<NonUserProfile> {
  List<bool> showAllList = [false, false, false, false, false];
  ScrollController _scrollController = ScrollController();
  bool _showButtons = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels > 50) {
      if (_showButtons) {
        print("Hiding buttons");
        setState(() {
          _showButtons = false;
        });
      }
    } else {
      if (!_showButtons) {
        print("Showing buttons");
        setState(() {
          _showButtons = true;
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> strings =
        Provider.of<MainClass>(context, listen: false).trasnforedStrings;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
      child: Scaffold(
        body: Consumer<MainClass>(
          builder: (context, selectedStringModel, _) {
            List<String> mediaStrings = [
              selectedStringModel.facebookString ?? "",
              selectedStringModel.instagramString ?? "",
              selectedStringModel.githubString ?? "",
              selectedStringModel.behanceString ?? "",
              selectedStringModel.whatsappString ?? "",
              selectedStringModel.twitterString ?? "",
              selectedStringModel.authorString ?? "",
            ];

            return Stack(
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
                    backgroundColor: Colors.grey,
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
                    controller: _scrollController,
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
                                GoodAtANDMedia(height, width, context,
                                    mediaStrings, strings),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Activity', 5),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Experiance', 0),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Education', 1),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Certfications', 2),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Skills', 3),
                                profilelists(height, width, context,
                                    selectedStringModel, 'Languages', 4),
                                SizedBox(
                                  height: 20 * height,
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
            );
          },
        ),
      ),
    );
  }

  Padding GoodAtANDMedia(double height, double width, BuildContext context,
      List<String> mediaStrings, List<String> strings) {
    return Padding(
      padding: EdgeInsets.only(
          top: 10.0 * height, left: 30 * width, right: 22 * width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'MY Media',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 24,
                ),
              ),
              const Spacer(),
            ],
          ),
          for (int i = 0; i < mediaStrings.length; i++)
            if (mediaStrings[i] != "")
              MediaItem(
                mediastring: mediaStrings[i],
              ),
          SizedBox(
            height: 5 * height,
          ),
          Row(
            children: [
              const Text(
                'What I am Good At',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 23,
                ),
              ),
              const Spacer(),
            ],
          ),
          Wrap(crossAxisAlignment: WrapCrossAlignment.start, children: [
            for (int i = 0; i < strings.length; i++)
              Padding(
                padding: EdgeInsets.only(left: 5.0 * width),
                child: Filed(
                  string: strings[i],
                  dynamic: false,
                ),
              ),
          ])
        ],
      ),
    );
  }

  Padding profilelists(double height, double width, BuildContext context,
      MainClass selectedStringModel, String listname, int listnum) {
    int? length;
    switch (listnum) {
      case 0:
        length = selectedStringModel.ExperianceitemList.length;
        break;
      case 1:
        length = selectedStringModel.EducationItemList.length;
        break;
      case 2:
        length = selectedStringModel.LisitemList.length;
        break;
      case 3:
        length = selectedStringModel.SkillsitemList.length;
        break;
      case 4:
        length = selectedStringModel.LanguagesitemList.length;
        break;
      case 5:
        length = 0;
        break;
    }

    // ignore: unrelated_type_equality_checks
    int limit = (listnum == 2 || listnum == 3 || listnum == 4) ? 2 : 4;
    return Padding(
      padding: EdgeInsets.only(
          top: 1.0 * height, left: 30 * width, right: 22 * width),
      child: Wrap(
        children: [
          Row(
            children: [
              Text(
                listname,
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 24,
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(
            height: height * 5,
          ),
          if (listnum == 5)
            Padding(
              padding: EdgeInsets.only(
                  left: width * 28.0, top: height * 10, bottom: height * 10),
              child: PointsCard(
                colorr: const Color(0xFF2D3D51),
              ),
            ),
          if (listnum != 5)
            for (int i = 0; i < length!; i++)
              if (showAllList[listnum] || (i < limit))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (listnum == 0)
                      ExprianceItem(
                        title: selectedStringModel.ExperianceitemList[i].title,
                        companyname: selectedStringModel
                            .ExperianceitemList[i].companyname,
                        emplname:
                            selectedStringModel.ExperianceitemList[i].emplname,
                        location:
                            selectedStringModel.ExperianceitemList[i].location,
                        enddate:
                            selectedStringModel.ExperianceitemList[i].enddate,
                        startdate:
                            selectedStringModel.ExperianceitemList[i].startdate,
                      )
                    else if (listnum == 1)
                      EducationItem(
                        school: selectedStringModel.EducationItemList[i].school,
                        fieldofstudy: selectedStringModel
                            .EducationItemList[i].fieldofstudy,
                        degree: selectedStringModel.EducationItemList[i].degree,
                        enddate:
                            selectedStringModel.EducationItemList[i].enddate,
                        startdate:
                            selectedStringModel.EducationItemList[i].startdate,
                      )
                    else if (listnum == 2)
                      LisAndCeltItem(
                          name: selectedStringModel.LisitemList[i].name,
                          issorg: selectedStringModel.LisitemList[i].issorg,
                          url: selectedStringModel.LisitemList[i].url,
                          date: selectedStringModel.LisitemList[i].date)
                    else if (listnum == 3)
                      SkillsItem(
                          skil: selectedStringModel.SkillsitemList[i].skil,
                          get: selectedStringModel.SkillsitemList[i].get)
                    else if (listnum == 4)
                      LanguagesItem(
                          language:
                              selectedStringModel.LanguagesitemList[i].language,
                          prof: selectedStringModel.LanguagesitemList[i].prof),
                    if (i != length - 1)
                      const Divider(), // Add a divider after each item except the last one
                  ],
                ),
          SizedBox(
            width: width * 120,
          ),
          if (listnum != 5)
            if (((length! > 4) && (listnum != 3) && (listnum != 2)) ||
                ((length > 2) &&
                    (listnum == 2 || listnum == 3 || listnum == 4)))
              Padding(
                padding: EdgeInsets.only(left: (1 / width) * 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      showAllList[listnum] = !showAllList[listnum];
                    });
                  },
                  child: SizedBox(
                    height: height * 23,
                    width: width * 75,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          !showAllList[listnum] ? "Show All" : 'Show Less',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 31, 33, 34),
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: width * 2,
                        ),
                        Icon(
                          !showAllList[listnum]
                              ? Icons.arrow_forward_outlined
                              : Icons.arrow_back_outlined,
                          size: width * 15,
                        )
                      ],
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class MediaItem extends StatelessWidget {
  MediaItem({super.key, required this.mediastring});
  String mediastring;
  @override
  Widget build(BuildContext context) {
    return Text(
      '-' + mediastring,
      style: const TextStyle(
        fontSize: 13,
        fontFamily: "AeonikTRIAL",
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
