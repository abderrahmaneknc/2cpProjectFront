import 'package:flutter/material.dart';

class MyBoxes extends StatefulWidget {
  const MyBoxes({
    Key? key,
    required this.hint,
    required this.icon,
    required this.show,
    this.isPassword = false,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final bool show;
  final bool isPassword;

  @override
  // ignore: library_private_types_in_public_api
  _MyBoxesState createState() => _MyBoxesState();
}

class _MyBoxesState extends State<MyBoxes> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        obscureText: widget.isPassword ? _isObscure : false,
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontFamily: "AeonikTRIAL",

            // Apply your desired style to the hint text
            fontSize: 12,
            color: Color(0xA5313638),
            // Add more style properties as needed
          ),
          prefixIcon: Icon(
            widget.icon,
            color: Colors.black.withOpacity(0.4),
          ),
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  child: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black.withOpacity(0.4), // Adjust opacity here
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 197, 193, 193),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: -13),
        ),
      ),
    );
  }
}
