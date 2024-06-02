import 'package:flutter/material.dart';

class verified extends StatelessWidget {
  const verified({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Forgot Password',
            
            style: TextStyle(
              fontFamily: "AeonikTRIAL",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3D51),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            'Enter your email for the verification process, we will send you 5 digits code to your email.',
            style: TextStyle(
              fontFamily: "AeonikTRIAL",
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
