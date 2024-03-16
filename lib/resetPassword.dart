import 'package:flutter/material.dart';

import 'boxes.dart';
import 'elvButton.dart';

class MyRessetPass extends StatelessWidget {
  const MyRessetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Reset Password',
            style: TextStyle(
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
