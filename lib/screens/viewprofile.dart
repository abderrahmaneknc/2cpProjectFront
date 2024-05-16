import 'package:flutter/material.dart';

import 'package:prj/items/clickbutton.dart';
import 'package:prj/items/fileditem.dart';
import 'package:prj/screens/exprienceitem.dart';
import 'package:provider/provider.dart';

import '../items/exprienceitemsclass.dart';
import '../items/liststringmodel.dart';

class ViewProfile extends StatefulWidget {
  ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  bool showAllExperiences = false;
  @override
  Widget build(BuildContext context) {
    List<String> strings =
        Provider.of<SelectedStringModel>(context, listen: false)
            .trasnforedStrings;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return SafeArea(
      child: Scaffold(
        body: Consumer<SelectedStringModel>(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            icon: Icon(Icons.edit),
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, 'add_media');
                                            },
                                          ),
                                        ],
                                      ),
                                      for (int i = 0;
                                          i < mediaStrings.length;
                                          i++)
                                        if (mediaStrings[i] != "")
                                          MediaItem(
                                            mediastring: mediaStrings[i],
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
                                            icon: Icon(Icons.edit),
                                            onPressed: () {
                                              Navigator.popAndPushNamed(
                                                  context, 'add_fields');
                                            },
                                          ),
                                        ],
                                      ),
                                      Wrap(
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          children: [
                                            for (int i = 0;
                                                i < strings.length;
                                                i++)
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.0 * width),
                                                child: Filed(
                                                  string: strings[i],
                                                  dynamic: false,
                                                ),
                                              ),
                                          ])
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
                                            'Experiancess',
                                            style: TextStyle(
                                              fontFamily: "AeonikTRIAL",
                                              fontSize: 24,
                                            ),
                                          ),
                                          Spacer(),
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, 'add_experiences');
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.edit),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                      for (int i = 0;
                                          i <
                                              selectedStringModel
                                                  .ExprienceItemList.length;
                                          i++)
                                        if (showAllExperiences || i < 4)
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ExprianceItem(
                                                title: selectedStringModel
                                                    .ExprienceItemList[i].title,
                                                companyname: selectedStringModel
                                                    .ExprienceItemList[i]
                                                    .companyname,
                                                emplname: selectedStringModel
                                                    .ExprienceItemList[i]
                                                    .emplname,
                                                location: selectedStringModel
                                                    .ExprienceItemList[i]
                                                    .location,
                                                enddate: selectedStringModel
                                                    .ExprienceItemList[i]
                                                    .enddate,
                                                startdate: selectedStringModel
                                                    .ExprienceItemList[i]
                                                    .startdate,
                                              ),
                                              if (i !=
                                                  selectedStringModel
                                                          .ExprienceItemList
                                                          .length -
                                                      1)
                                                Divider(), // Add a divider after each item except the last one
                                            ],
                                          ),
                                      if (selectedStringModel
                                              .ExprienceItemList.length <
                                          4)
                                        SizedBox(
                                          width: 500 * width,
                                        ),
                                      SizedBox(
                                        width: width * 120,
                                      ),
                                      if (selectedStringModel
                                              .ExprienceItemList.length >
                                          4)
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: (1 / width) * 10),
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                showAllExperiences =
                                                    !showAllExperiences;
                                              });
                                            },
                                            child: SizedBox(
                                              height: height * 23,
                                              width: width * 75,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    !showAllExperiences
                                                        ? "Show All"
                                                        : 'Show Less',
                                                    style: TextStyle(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 31, 33, 34),
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    width: width * 2,
                                                  ),
                                                  Icon(
                                                    !showAllExperiences
                                                        ? Icons
                                                            .arrow_forward_outlined
                                                        : Icons
                                                            .arrow_back_outlined,
                                                    size: width * 15,
                                                  )
                                                ],
                                              ),
                                            ),
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
            );
          },
        ),
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
      style: TextStyle(
        fontSize: 13,
        fontFamily: "AeonikTRIAL",
      ),
    );
  }
}
