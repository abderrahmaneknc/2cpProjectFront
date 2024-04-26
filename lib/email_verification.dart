import 'package:flutter/material.dart';
import 'elvButton.dart';
import 'intropagetemplate.dart';
import 'verified.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Intropagetmplt(
                  picture:
                      'assets/Screenshot_26-4-2024_215221_www.figma.com.jpeg',
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
                text: 'Resent Verification Email',
                color: Color(0xFF2D3D51),
                logo: false,
                assets: '',
                txtcolor: Colors.white,
                onPressed: () {
                                       showModalBottomSheet(
                    context: context,
                    isScrollControlled: false,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child:   verified(),
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
