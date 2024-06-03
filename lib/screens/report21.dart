import 'package:flutter/material.dart';


import '../items/txtbutton.dart';
import 'report211.dart';

import 'report222.dart';

// ignore: camel_case_types
class Report21 extends StatelessWidget {
  const Report21({super.key});

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
                'who are they pretending to be?',
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
                padding: const EdgeInsets.only(left: 2.0),
                child: MyTxtButtons(
                  weight: FontWeight.w500,
                  text: 'Me',
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
                            child: Report211(),
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
                  text: 'Someone else',
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
                            child: Report222(),
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
