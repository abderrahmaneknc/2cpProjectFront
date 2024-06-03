import 'package:flutter/material.dart';



import 'package:prj/items/elvButton.dart';

import 'package:prj/screens/report4.dart';



// ignore: camel_case_types
class Report211 extends StatelessWidget {
  const Report211({super.key});

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
                'we remove account that :',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3D51),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Encourage hate speech and symbols.',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Post false information',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Mislead or possible scam',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Try to pretend to be some one else',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Mybuttons(
                  text: 'Submit Report',
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
