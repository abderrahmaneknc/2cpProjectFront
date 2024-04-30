import 'package:flutter/material.dart';


import 'package:prj/items/txtbutton.dart';
import 'package:prj/screens/edahabia.dart';

class Edahbback extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Edahbback({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2D3D51),
      child: Center(
        child: SingleChildScrollView(
          child: MyTxtButtons(
                                  weight: FontWeight.normal,

            text: 'edahabia button',
            color: const Color.fromARGB(255, 255, 255, 255),
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
                                child: const Edahabia(),
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
