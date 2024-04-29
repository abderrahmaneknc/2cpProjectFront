import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Boxnumber extends StatelessWidget {
  final bool onlyDigits;

  const Boxnumber({Key? key, required this.onlyDigits}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> inputFormatters = [];
    if (onlyDigits) {
      inputFormatters.add(FilteringTextInputFormatter.digitsOnly);
    }

    return TextField(
      textAlign: TextAlign.center,
      inputFormatters: inputFormatters,
      maxLength: 15,
      keyboardType: onlyDigits ? TextInputType.number : TextInputType.name,
      decoration: InputDecoration(
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
           color : Color.fromARGB(255, 197, 193, 193),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
      ),
    );
  }
}
