import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'boxdigits.dart';
import 'elvButton.dart';
import 'resetPassword.dart';
import 'txtbutton.dart';

class Digits extends StatelessWidget {
  const Digits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Enter 5 Digits Code',
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
            'Enter the 5 digits code that you received on your email.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                'Did not receive the email ?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(2),
                ),
                child: MyTxtButtons(
                  weight: FontWeight.normal,
                  text: 'Send again',
                  color: Color(0xFF2D3D51),
                  onPressed: () {},
                  size: 13,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: Mybuttons(
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
                        child: MyRessetPass(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
