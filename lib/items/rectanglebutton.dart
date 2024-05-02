import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double width;
  final double height;

  const RectangularButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.transparent,
    this.textColor = const Color(0xFF2D3D51),
    this.borderRadius = 10.0,
    this.width = double.infinity,
    this.height = 50.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF2D3D51),
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle( fontFamily: "AeonikTRIAL",
            color: textColor,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}



