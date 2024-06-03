import 'package:flutter/material.dart';

import '../items/allfields.dart';
import '../items/filter2.dart';
import '../items/homeitem.dart';
import '../items/homeitem2.dart';
import '../items/txtbutton.dart';
import '../items/txtfdbutton.dart';
import '../items/filter.dart';
import '../items/forgotpassword.dart';
import 'homeDialoge.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool b = true;
  bool res = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: Padding(
          padding:
              EdgeInsets.only(top: height, left: 22 * width, right: 22 * width),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 250 * width,
                      height: 40 * height,
                      child: SearchBar(height: height),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20 * height,
                        bottom: 20 * height,
                        left: 5 * width,
                      ),
                      child: MyTxtButtons(
                        weight: FontWeight.bold,
                        text: 'Cancel',
                        color: const Color(0xFF2D3D51),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        size: 16,
                      ),
                    ),
                  ],
                ),
                AllFileds(),
                SizedBox(
                  height: 24,
                ),
                const Text(
                  'recent searches',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    height: 0.9,
                    fontSize: 16,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Add other widgets here
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFieldbt(
      suffix: Icons.clear,
      fixed: false,
      frontic: Icons.search,
      height: 1 * height,
      hinttext: 'What are you looking for',
      notshow: false,
    );
  }
}
