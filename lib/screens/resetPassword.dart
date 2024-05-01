import 'package:flutter/material.dart';

import 'package:prj/items/boxes.dart';
import 'package:prj/items/elvButton.dart';

class MyRessetPass extends StatelessWidget {
  const MyRessetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Reset Password',
            style: TextStyle(
              fontFamily: "AeonikTRIAL",
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3D51),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Set the new password for your account so you can login and access all features.',
            style: TextStyle(
              fontFamily: "AeonikTRIAL",
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            children: [
              MyBoxes(
                hint: 'Re-type your password',
                icon: Icons.lock_outline,
                show: false,
                isPassword: true,
              ),
              SizedBox(
                height: 16,
              ),
              MyBoxes(
                hint: 'Re-type your password',
                icon: Icons.lock_outline,
                show: false,
                isPassword: true,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Mybuttons(
              text: 'Reset Password',
              color: Color(0xFF2D3D51),
              logo: false,
              assets: '',
              txtcolor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
