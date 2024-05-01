import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:prj/items/bloglistitem.dart';
import 'package:prj/items/txtfdbutton.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 244),
      body: Padding(
        padding: EdgeInsets.only(
            top: 28 * height, left: 24 * width, right: 24 * width),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                SizedBox(
                  width: 269 * width,
                  height: 40 * height,
                  child: TextFieldbt(
                    fixed: false,
                    frontic: Icons.search,
                    height: 1 * height,
                    hinttext: 'What are you looking for',
                    notshow: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20 * height,
                    bottom: 20 * height,
                    left: 18 * width,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 24 * height,
                      width: 24 * width,
                      child: Image.asset(
                        'assets/Notification.png',
                        fit: BoxFit.contain,
                        height: 24 * height,
                        width: 22 * width,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemBuilder: (context, index) => BlogsList(chek: index),
                itemCount: 40,
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
