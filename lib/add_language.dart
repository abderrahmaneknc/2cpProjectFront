import 'package:flutter/material.dart';
import 'package:prj/textfield2all.dart';

import 'elvButton.dart';

class Addlanguage extends StatelessWidget {
  const Addlanguage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          'Languages',
          style: TextStyle(
            color: Color(0xFF2D3D51),
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'choose the language that you can communicate with :',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Textfieldd2(
                  texthint: '',
                  size: 16,
                  color: Color(0xFF2D3D51),
                  weight: FontWeight.w400,
                  maxCharacters: 80,
                ),
                SizedBox(height: 0),
                Text(
                  'Proficiency',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Textfieldd2(
                  texthint: '',
                  size: 16,
                  color: Color(0xFF2D3D51),
                  weight: FontWeight.w400,
                  maxCharacters: 80,
                ),
              ],
            ),
          ),
          Spacer(), // To push the button to the bottom
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Mybuttons(
              text: 'Save',
              color: Color(0xFF2D3D51),
              logo: false,
              assets: '',
              txtcolor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
