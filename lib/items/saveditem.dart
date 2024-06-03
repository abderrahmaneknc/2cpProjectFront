import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SavedItem extends StatefulWidget {
  SavedItem(
      {super.key,
      required this.title1,
      required this.title2,
      required this.timestamp});
  String title1, title2, timestamp;

  @override
  State<SavedItem> createState() => _SavedItemState();
}

class _SavedItemState extends State<SavedItem> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 49 * height,
        width: 312 * width,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.0 * width),
                  child: Text(
                    widget.title1,
                    style: TextStyle(
                      height: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AeonikTRIAL",
                      fontSize: 15 * width,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6 * height,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 34,
                      width: width * 37,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/depositphotos_153083628-stock-photo-businesspeople-working-at-desk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 9.0 * height),
                      child: Text(
                        widget.title2,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1,
                          fontFamily: "AeonikTRIAL",
                          fontSize: 15 * width,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
