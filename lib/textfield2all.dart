import 'package:flutter/material.dart';

class Textfieldd2 extends StatefulWidget {
  const Textfieldd2({
    Key? key,
    required this.texthint,
    required this.size,
    required this.weight,
    required this.color,
    this.maxCharacters,
  }) : super(key: key);

  final String texthint;
  final double size;
  final FontWeight weight;
  final Color color;
  final int? maxCharacters;

  @override
  _Textfieldd2State createState() => _Textfieldd2State();
}

class _Textfieldd2State extends State<Textfieldd2> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: (_) {
        setState(() {});
      },
      maxLength: widget.maxCharacters,
      decoration: InputDecoration(
        hintText: widget.texthint,
        filled: true,
        fillColor: Color(0xFBFBFBFB),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ), // All border color
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(5.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        counterText: '${_controller.text.length}/${widget.maxCharacters}',
        counterStyle: TextStyle(color: Colors.grey[600]),
      ),
      style: TextStyle(
        fontSize: widget.size,
        fontWeight: widget.weight,
        color: widget.color,
      ),
    );
  }
}
