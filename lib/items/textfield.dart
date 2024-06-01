import 'package:flutter/material.dart';


class Textfieldd extends StatefulWidget {
  const Textfieldd({
    Key? key,
    required this.texthint,
    required this.size,
    required this.weight,
    required this.color,
    this.onSave,
    required this.controller,
  }) : super(key: key);

  final String texthint;
  final double size;
  final FontWeight weight;
  final Color color;
  final Function(String)? onSave;
  final TextEditingController controller;

  @override
  _TextfielddState createState() => _TextfielddState();
}

class _TextfielddState extends State<Textfieldd> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.texthint,
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF2D3D51),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF2D3D51),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      ),
      style: TextStyle(
        fontFamily: "AeonikTRIAL",
        fontSize: widget.size,
        fontWeight: widget.weight,
        color: widget.color,
      ),
      onChanged: (value) {
        // Save the value to the controller as the user types
        widget.controller.text = value;
      },
      onEditingComplete: () {
        if (widget.onSave != null) {
          widget.onSave!(widget.controller.text);
        }
      },
    );
  }
}