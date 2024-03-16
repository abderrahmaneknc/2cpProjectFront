import 'package:flutter/material.dart';

class MyBoxes extends StatelessWidget {
  MyBoxes({
    Key? key,
  
    required this.hint,
    required this.icon,
    required this.show,
  }) : super(key: key);

  final String hint ;
  final IconData icon;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        obscureText: show,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 197, 193, 193),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.blue),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }
}
