import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClickButton extends StatelessWidget {
  ClickButton(
      {super.key,
      required this.text,
      required this.showicon,
      required this.fill,
      required this.txtclr,
      required this.fnct});
  String text;
  bool showicon;
  Color fill, txtclr;
  VoidCallback fnct;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: fnct,
      child: Container(
        height: 45,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: showicon
              ? Border.all(
                  width: 1,
                  color: Colors.grey,
                )
              : null,
          color: fill,
          borderRadius: const BorderRadius.horizontal(
            left: Radius.circular(25),
            right: Radius.circular(25),
          ),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  color: txtclr,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
