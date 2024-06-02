import 'package:flutter/material.dart';
import 'package:prj/items/boxes.dart';
import 'package:prj/items/digits.dart';

import 'package:prj/items/elvButton.dart';

// ignore: camel_case_types
class buildSheet extends StatelessWidget {
  const buildSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFFBFBFB),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
        child: Container(
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
        ),
      ),
    );
  }
}
