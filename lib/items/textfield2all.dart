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
    this.prefixIcon,
    this.controller,
    this.validator,
  }) : super(key: key);

  final String texthint;
  final double size;
  final FontWeight weight;
  final Color color;
  final int? maxCharacters;
  final double? width;
  final double? height;
  final IconData?
      prefixIcon; // Icon to be displayed at the beginning of the text field
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  _Textfieldd2State createState() => _Textfieldd2State();
}

class _Textfieldd2State extends State<Textfieldd2> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 24,
      controller: _controller,
      onChanged: (_) {
        setState(() {});
      },
      maxLength: widget.maxCharacters,
      textAlign: TextAlign.left, // Align text to the left
      maxLines: null, // Allow multiple lines
      validator: widget.validator,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        hintText: widget.texthint,
        filled: true,
        fillColor: const Color(0xFBFBFBFB),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFF2D3D51),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        contentPadding: EdgeInsets.fromLTRB(
          (widget.prefixIcon != null
              ? 0
              : widget.width ?? 5), // Left padding including icon width
          widget.height ?? 0, // Top padding
          0, // Right padding
          0, // Bottom padding
        ),
        counterText: '${_controller.text.length}/${widget.maxCharacters}',
        counterStyle: TextStyle(
          color: Colors.grey[600],
          fontFamily: "AeonikTRIAL",
        ),
      ),
      style: TextStyle(
        fontFamily: "AeonikTRIAL",
        fontSize: widget.size,
        fontWeight: widget.weight,
        color: widget.color,
      ),
    );
  }
}
