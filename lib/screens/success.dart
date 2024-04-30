import 'package:flutter/material.dart';

import 'package:prj/items/elvButton.dart';

import 'intropagetemplate.dart';


class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

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
                  picture: 'assets/Screenshot 2024-03-20 142202.png',
                  text1: 'Success',
                  text2:
                      'Thank you for your generous support! Your contribution not only fuels their work but also inspires them to strive for brilliance and excellence.',
                  ww: 207,
                  hh: 233,
                  f1: 28,
                  f2: 12,
                ),
              ),
              Mybuttons(
                text: 'Okay',
                color: Color(0xFF2D3D51),
                logo: false,
                assets: '',
                txtcolor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
