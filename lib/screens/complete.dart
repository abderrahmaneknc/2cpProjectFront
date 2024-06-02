import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'intropagetemplate.dart';
import 'verifieDialogue.dart';

class Complete extends StatelessWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        appBar: AppBar(
          backgroundColor: Color(0xFFFBFBFB),
          leading: Padding(
            padding: const EdgeInsets.only(top: 25, left: 10),
            child: CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: const Color(0xFF2D3D51),
                  ),
                ),
                backgroundColor: const Color(0x592D3D51),
                radius: 15),
          ),
        ),
        body: Container(
          color: Color(0xFFFBFBFB),
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Intropagetmplt(
                      picture: 'assets/Group 140.png',
                      text1: 'complete',
                      text2:
                          'We appreciate your reaching out to us! we will get back to you as soon as possible',
                      ww: 207,
                      hh: 233,
                      f1: 28,
                      f2: 12,
                    ),
                  ),
                  Mybuttons(
                    text: 'okay',
                    color: Color(0xFF2D3D51),
                    logo: false,
                    assets: '',
                    txtcolor: Colors.white,
                    onPressed: () {},
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
