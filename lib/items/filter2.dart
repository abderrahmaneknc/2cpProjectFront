import 'package:flutter/material.dart';
import 'package:prj/items/allfields.dart';
import 'package:prj/items/boxes.dart';
import 'package:prj/items/digits.dart';

import 'package:prj/items/elvButton.dart';

// ignore: camel_case_types
class Filter2 extends StatefulWidget {
  const Filter2({super.key});

  @override
  State<Filter2> createState() => _Filter2State();
}

class _Filter2State extends State<Filter2> {
  RangeValues values = const RangeValues(0, 1);
  RangeValues values2 = const RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    RangeLabels labels2 =
        RangeLabels(values2.start.toString(), values2.end.toString());

    return Container(
      height: 600,
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
                'Filter',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3D51),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Categories',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              AllFileds(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Rank and Points',
                style: TextStyle(
                  fontFamily: "AeonikTRIAL",
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RangeSlider(
                    max: 50,
                    min: 0,
                    activeColor: const Color(0xFF2D3D51),
                    values: values2,
                    divisions: 50,
                    labels: labels2,
                    onChanged: (newValues2) {
                      setState(() {
                        values2 = newValues2;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      '00',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Text(
                      '50',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RangeSlider(
                    max: 3000,
                    min: 0,
                    activeColor: const Color(0xFF2D3D51),
                    values: values,
                    divisions: 3000,
                    labels: labels,
                    onChanged: (newValues) {
                      setState(() {
                        values = newValues;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      '00',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Text(
                      '3000',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
