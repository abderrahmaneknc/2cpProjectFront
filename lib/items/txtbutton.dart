import 'package:flutter/material.dart';

class MyTxtButtons extends StatelessWidget {
  const MyTxtButtons({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.size,
    required this.weight,
  }) : super(key: key);

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(2),
      ),
      child: Text(
        text,
        style: TextStyle( fontFamily: "AeonikTRIAL",
          color: color,
          fontSize: size,
          fontWeight: weight,
        ),
      ),
    );
  }
}
