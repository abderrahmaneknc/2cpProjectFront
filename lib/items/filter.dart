import 'package:flutter/material.dart';
import 'package:prj/items/allfields.dart';


// ignore: camel_case_types
class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
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
                'Saves',
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(const Size(160, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Ascending order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D3D51),
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(const Size(151, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'descending order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D3D51),
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Scrolling percentage average',
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(const Size(160, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'Ascending order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D3D51),
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      fixedSize: MaterialStateProperty.all(const Size(151, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: const Color(0xFF2D3D51),
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      'descending order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2D3D51),
                        fontFamily: "AeonikTRIAL",
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
