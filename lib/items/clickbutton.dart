import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClickButton extends StatelessWidget {
  ClickButton(
      {super.key,
      required this.text,
      required this.showborder,
      required this.fill,
      required this.txtclr,
      required this.fnct,
      this.borderclr});
  String text;
  bool showborder;
  Color fill, txtclr;
  VoidCallback fnct;
  Color? borderclr;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
 
   
    double width = screenWidth / 360;
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: fnct,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: showborder
              ? Border.all(
                  width: 1,
                  color: borderclr!,
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
                  fontSize:
                      (borderclr != Colors.white) ? 16 * width : 13 * width,
                  fontWeight: (borderclr != Colors.white)
                      ? FontWeight.bold
                      : FontWeight.w600),
            ),
          ],
        )),
      ),
    );
  }
}
