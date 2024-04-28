import 'package:flutter/material.dart';

import '../items/bloglistitem.dart';
import '../items/txtfdbutton.dart';

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
            top: 34 * height, left: 24 * width, right: 24 * width),
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
                    bottom: 20 * height,
                    left: 10 * width,
                  ),
                  child: SizedBox(
                    height: 22 * height,
                    width: 22 * width,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24 * height,
            ),
            SizedBox(
              height: 25 * height,
              width: 175 * width,
              child: Text(
                'Blog of The Week',
                style: TextStyle(
                    fontSize: 21 * width,
                    height: 1,
                    fontFamily: AutofillHints.addressCity,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 4 * height,
            ),
            SizedBox(
              height: 14 * height,
              width: 135 * width,
              child: Text(
                'Tranding blogs and news',
                style: TextStyle(
                    height: 1,
                    fontSize: 11 * width,
                    color: Color.fromARGB(206, 49, 54, 56),
                    fontFamily: AutofillHints.addressCity),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10 * height,
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
