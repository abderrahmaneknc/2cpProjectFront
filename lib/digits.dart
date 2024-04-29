import 'package:flutter/material.dart';

import 'boxdigits.dart';
import 'elvButton.dart';
import '../resetPassword.dart';
import 'txtbutton.dart';

class Digits extends StatelessWidget {
  const Digits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Enter 5 Digits Code',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3D51),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Enter the 5 digits code that you received on your email.',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
              Myboxdigits(),
            ],
          ),
          const SizedBox(
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
                  padding: const EdgeInsets.all(2),
                ),
                child: MyTxtButtons(
                  text: 'Send again',
                  color: const Color(0xFF2D3D51),
                  onPressed: () {},
                  size: 13,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Mybuttons(
              text: 'Continue',
              color: const Color(0xFF2D3D51),
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
                        child: const MyRessetPass(),
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
