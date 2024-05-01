import 'package:flutter/material.dart';

class Textfieldd extends StatelessWidget {
  const Textfieldd({
    Key? key,
    required this.texthint,
    required this.size,
    required this.weight,
    required this.color,
    this.icon,
  }) : super(key: key);

  final String texthint;
  final double size;
  final FontWeight weight;
  final Color color;
  final int? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: texthint,

        filled: true,
        fillColor: Colors.transparent, // Transparent background
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF2D3D51),
          ), // Bottom border color
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF2D3D51),
          ), // Bottom border color
        ),
        contentPadding:
            EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Padding
      ),
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
      // Or TextDirection.rtl for right-to-left languages
    );
  }
}
