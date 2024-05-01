import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'intropagetemplate.dart';
import 'verifieDialogue.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 25, left: 10),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Intropagetmplt(
                      picture: 'assets/Group 289.jpg',
                      text1: 'Email Verification',
                      text2:
                          'Please check your email for the verification link. If you don'
                          't see it, please check your spam folder or click below to resend.',
                      ww: 207,
                      hh: 233,
                      f1: 28,
                      f2: 12,
                    ),
                  ),
                  Mybuttons(
                    text: 'Resend Verification Email',
                    color: Color(0xFF2D3D51),
                    logo: false,
                    assets: '',
                    txtcolor: Colors.white,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return VerificationDialog(); // Show the dialog
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
