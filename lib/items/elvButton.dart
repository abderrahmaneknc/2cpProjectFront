// ignore: duplicate_ignore
// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  const Mybuttons({
    Key? key,
    required this.text,
    required this.color,
    required this.txtcolor,
    required this.logo,
    required this.assets,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color color;
  final bool logo;
  final String assets;
  final Color txtcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          fixedSize: MaterialStateProperty.all(const Size(350, 40)),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 197, 193, 193),
              ),
            ),
          ),
        ),
        child: logo
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    assets,
                    height: 40,
                    width: 40,
                  ),
                  Text(
                    text,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              )
            : Text(
                text,
                style: TextStyle(color: txtcolor),
              ),
      ),
    );
  }
}
