import 'package:flutter/material.dart';

import 'boxes.dart';
import 'digits.dart';
import 'elvButton.dart';

// ignore: camel_case_types
class buildSheet extends StatelessWidget {
  const buildSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Forgot Password',
            style: TextStyle(
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
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          MyBoxes(
            hint: 'enter your email',
            icon: Icons.email_outlined,
            show: false,
          ),
          
        
           SizedBox(
            height: 30,
          ),
          Mybuttons(
            text: 'Continue',
            color: Color(0xFF2D3D51),
            logo: false,
            assets: '',
            txtcolor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Digits(),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
