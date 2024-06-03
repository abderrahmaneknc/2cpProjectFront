import 'package:flutter/material.dart';


import 'package:prj/items/elvButton.dart';


// ignore: camel_case_types
class Report4 extends StatelessWidget {
  const Report4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
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
                'Thanks for letting us know',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3D51),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'we will check your report. Your report helps us improve our processes and keep our community safe.',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Spacer(),
              Center(
                child: Mybuttons(
                  text: 'Okay!',
                  color: Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
