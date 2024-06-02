import 'package:flutter/material.dart';
import 'package:prj/items/boxes.dart';
import 'package:prj/items/digits.dart';

import 'package:prj/items/elvButton.dart';
import 'package:prj/screens/report2.dart';
import 'package:prj/screens/report4.dart';

import '../items/textfield2all.dart';
import '../items/txtbutton.dart';
import '../items/txtfdbutton.dart';

// ignore: camel_case_types
class Report3 extends StatelessWidget {
  const Report3({super.key});

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
                'Report',
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
                'Why are reporting this account?',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3D51),
                ),
              ),
              Text(
                'your report is anonymous, except if you’re reporting really known users.',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Textfieldd2(
                prefixIcon: Icons.email,
                maxCharacters: 200,
                texthint: '',
                size: 16,
                color: Color(0xFF2D3D51),
                weight: FontWeight.w400,
              ),
              Spacer(),
              Center(
                child: Mybuttons(
                  text: 'Submmit Report',
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
                            child: Report4(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
