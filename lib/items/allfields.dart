import 'package:flutter/material.dart';
import 'package:prj/items/fileditem.dart';

import 'package:provider/provider.dart';

import 'elvButton.dart';
import 'mainclass.dart';

class AllFileds extends StatefulWidget {
  const AllFileds({super.key});

  @override
  State<AllFileds> createState() => _AllFiledsState();
}

class _AllFiledsState extends State<AllFileds> {
  List<String> selectedStrings = [];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double width = screenWidth / 360;
    List<String> strings = [
      'Web Dev',
      'Video Editing',
      'Python',
      'UI/UX',
      'Mobile Dev',
      'Cyber Security',
      'Graphic Design',
      'Java',
      'Motion Graphic',
      'Web Dev',
      'Video Editing',
      'Python',
      'UI/UX',
      'Mobile Dev',
      'Cyber Security',
      'Graphic Design',
      'Java',
      'Motion Graphic',
    ];
    return Column(
      children: [
        Wrap(
          spacing: 0,
          runSpacing: 0,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            for (int i = 0; i < strings.length; i++)
              Padding(
                padding: EdgeInsets.only(left: 5.0 * width),
                child: Filed(
                  string: strings[i],
                  dynamic: true,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
