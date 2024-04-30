import 'package:flutter/material.dart';

import 'package:prj/items/elvButton.dart';

class VerificationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 270,
        width: 230,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 16, right: 111.0, left: 111),
                child: Image.asset(
                  'assets/Ok.jpg',
                  height: 48,
                  width: 48,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Verified!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Text(
                  'Yahoo! you have successfully verified your\nemail. You can now enjoy our \napplication.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Mybuttons(
                  text: 'Sign in',
                  color: Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
