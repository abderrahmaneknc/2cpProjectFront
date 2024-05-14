import 'package:flutter/material.dart';
import 'package:prj/items/fileditem.dart';

import 'package:provider/provider.dart';

import 'elvButton.dart';
import 'liststringmodel.dart';

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
      'Motion Graphic'
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
                child: Filed(string: strings[i],dynamic: true,),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20, bottom: 20, top: 430),
          child: Mybuttons(
            text: 'Save',
            color: Color(0xFF2D3D51),
            logo: false,
            assets: '',
            txtcolor: Colors.white,
            onPressed: () {
              List<String> selectedStrings =
                  Provider.of<SelectedStringModel>(context, listen: false)
                      .selectedStrings;
              Provider.of<SelectedStringModel>(context, listen: false)
                  .trasnforedStrings = List.from(selectedStrings);
                  
              Navigator.pushNamed(context, 'viewprofile');
            },
          ),
        ),
      ],
    );
  }
}
