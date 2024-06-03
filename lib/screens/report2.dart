import 'package:flutter/material.dart';

import 'package:prj/screens/report21.dart';
import 'package:prj/screens/report22.dart';

import '../items/txtbutton.dart';

// ignore: camel_case_types
class Report2 extends StatelessWidget {
  const Report2({super.key});

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
                'what do you want to report about this account?',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 12,
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
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: MyTxtButtons(
                  weight: FontWeight.w500,
                  text: 'They are pretending to be someone else',
                  color: const Color(0xFF2D3D51),
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
                            child: Report21(),
                          ),
                        );
                      },
                    );
                  },
                  size: 13,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: MyTxtButtons(
                  weight: FontWeight.w500,
                  text: 'Something else',
                  color: const Color(0xFF2D3D51),
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
                            child: Report22(),
                          ),
                        );
                      },
                    );
                  },
                  size: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
