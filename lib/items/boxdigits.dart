import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Myboxdigits extends StatefulWidget {
  const Myboxdigits({Key? key}) : super(key: key);

  @override
  _MyboxdigitsState createState() => _MyboxdigitsState();
}

class _MyboxdigitsState extends State<Myboxdigits> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 13),
        child: TextField(
          controller: _controller,
          textAlign: TextAlign.center,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          maxLength: 1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 197, 193, 193),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.blue),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 12),
          ),
          onChanged: (value) {
            
            if (value.length == 1 ) {
              _focusNode.nextFocus();
            } else if (value.isEmpty) {
              _focusNode.previousFocus();
            }
          },
          focusNode: _focusNode,
          autofocus: true,
          keyboardAppearance: Brightness.light,
        ),
      ),
    );
  }
}
