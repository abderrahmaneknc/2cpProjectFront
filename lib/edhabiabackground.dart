import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:prj/edahabia.dart';

=======

import 'edahabia.dart';
>>>>>>> c57d7881da6ffeef9a07581fe7066fead5eb6f28
import 'txtbutton.dart';

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
