import 'package:flutter/material.dart';

class Intropagetmplt extends StatelessWidget {
  const Intropagetmplt({
    Key? key,
    required this.picture,
    required this.text1,
    required this.text2,
    required this.ww,
    required this.hh,
    required this.f1,
    required this.f2,
  }) : super(key: key);

  final String picture;
  final String text1;
  final String text2;
  final double ww;
  final double hh;
  final double f1;

  final double f2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.fromLTRB(40.0, 0, 40, 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  20), // Adjust the border radius as needed
              child: Container(
                width: ww,
                height: hh,
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: f1,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: f2,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
