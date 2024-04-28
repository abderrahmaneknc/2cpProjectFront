import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldbt extends StatelessWidget {
  TextFieldbt(
      {super.key,
      required this.frontic,
      required this.hinttext,
      required this.notshow,
      required this.fixed,
      required this.height});
  String hinttext;
  bool notshow, fixed;
  IconData? frontic;
  double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fixed ? 42 : height,
      width: double.maxFinite,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius:
                fixed ? BorderRadius.circular(20) : BorderRadius.circular(25),
            borderSide:
                const BorderSide(color: Color.fromARGB(128, 97, 97, 97), width: 1),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          hintText: hinttext,
          hintStyle: const TextStyle(
              fontSize: 13, color: Color.fromARGB(197, 97, 97, 97)),
          prefixIcon: Icon(
            frontic,
            color: const Color.fromARGB(175, 158, 158, 158),
            size: 28,
          ),
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}
