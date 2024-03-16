import 'package:flutter/material.dart';

class MyTxtButtons extends StatelessWidget {
  const MyTxtButtons({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double size;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(2),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
        ),
      ),
    );
  }
}
