import 'package:flutter/material.dart';
import 'package:prj/items/boxes.dart';
import 'package:prj/items/digits.dart';

import 'package:prj/items/elvButton.dart';
import 'package:prj/screens/report2.dart';

import '../items/txtbutton.dart';
import '../items/txtfdbutton.dart';
import 'report211.dart';

// ignore: camel_case_types
class Report222 extends StatelessWidget {
  const Report222({super.key});

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
                'Who is this account pretending to be?',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3D51),
                ),
              ),
              Text(
                'your report is anonymous, except if you'
                're reporting really known users.',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SearchBar(height: 50),
              Spacer(),
              Center(
                child: Mybuttons(
                  text: 'Next',
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
                            child: Report211(),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFieldbt(
      fixed: false,
      frontic: Icons.search,
      height: 1 * height,
      hinttext: 'search',
      notshow: false,
    );
  }
}
