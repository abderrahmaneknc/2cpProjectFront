import 'package:flutter/material.dart';

import '../items/dialoogue.dart';

class Homedialoge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return Dialog(
      child: Container(
        height: 190,
        width: 270,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, right: 16, left: 16, bottom: 20),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: NotifIcon(height: height, width: width),
            ),
            SizedBox(
              height: 12,
            ),
            Homedialogue(
              text: 'Notification',
              color: Colors.white,
              logo: true,
              txtcolor: Color(0xFF2D3D51),
              onPressed: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            Homedialogue(
              text: 'App Dashboard',
              color: Colors.white,
              logo: true,
              txtcolor: Colors.black,
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}

class NotifIcon extends StatelessWidget {
  const NotifIcon({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SizedBox(
        height: 24 * height,
        width: 24 * width,
        child: Image.asset(
          'assets/cancel_24px.png',
          fit: BoxFit.contain,
          height: 24 * height,
          width: 22 * width,
        ),
      ),
    );
  }
}
