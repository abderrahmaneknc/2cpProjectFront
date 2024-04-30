import 'package:flutter/material.dart';

class Textfieldd2 extends StatefulWidget {
  const Textfieldd2({
    Key? key,
    required this.texthint,
    required this.size,
    required this.weight,
    required this.color,
    this.maxCharacters,
    this.width,
    this.height,
  }) : super(key: key);

  final String texthint;
  final double size;
  final FontWeight weight;
  final Color color;
  final int? maxCharacters;
  final double? width;
  final double? height;

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
      cursorHeight: 24,
      controller: _controller,
      onChanged: (_) {
        setState(() {});
      },
      maxLength: widget.maxCharacters,
      textAlign: TextAlign.left, // Align text to the left
      maxLines: null, // Allow multiple lines
      decoration: InputDecoration(
        hintText: widget.texthint,
        filled: true,
        fillColor: Color(0xFBFBFBFB),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(5.0),
        ),
        contentPadding: EdgeInsets.fromLTRB(
          widget.width ?? 5, // Left padding
          widget.height ?? 0, // Top padding
          0, // Right padding
          0, // Bottom padding
        ),
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
