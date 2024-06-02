import 'package:flutter/material.dart';
import 'package:prj/items/allfields.dart';

import 'package:provider/provider.dart';

import '../items/elvButton.dart';
import '../items/mainclass.dart';

class Addfields extends StatelessWidget {
  const Addfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBFBFB),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: CircleAvatar(
            backgroundColor: const Color(0x592D3D51),
            radius: 15,
            child: GestureDetector(
              onTap: () {
                List<String> Strings =
                    Provider.of<MainClass>(context, listen: false)
                        .trasnforedStrings;
                Provider.of<MainClass>(context, listen: false).selectedStrings =
                    List.from(Strings);

                Navigator.pushNamed(context, 'viewprofile');
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: const Color(0xFF2D3D51),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Add Fields',
            style: TextStyle(
              color: Color(0xFF2D3D51),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0, left: 24, top: 10),
                child: Text(
                  'Choose Your Expertise: Pick the fields you excel in from '
                  'the available ones.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.only(left: 9.0),
                child: AllFileds(),
              ),

              Mybuttons(
                text: 'Save',
                color: Color(0xFF2D3D51),
                logo: false,
                assets: '',
                txtcolor: Colors.white,
                onPressed: () {
                  List<String> selectedStrings =
                      Provider.of<MainClass>(context, listen: false)
                          .selectedStrings;
                  Provider.of<MainClass>(context, listen: false)
                      .trasnforedStrings = List.from(selectedStrings);

                  Navigator.pushNamed(context, 'viewprofile');
                },
              ),
              // Your other widgets go here
            ],
          ),
        ),
      ),
    );
  }
}
