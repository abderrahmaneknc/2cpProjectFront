import 'package:flutter/material.dart';
import 'package:prj/edahabia.dart';

import 'txtbutton.dart';

class Edahbback extends StatelessWidget {
  const Edahbback({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2D3D51),
      child: Center(
        child: SingleChildScrollView(
          child: MyTxtButtons(
            text: 'edahabia button',
            color: Color.fromARGB(255, 255, 255, 255),
            size: 13,
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                elevation: 0,
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return  SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                child: Edahabia(),
                              ),
                            );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
