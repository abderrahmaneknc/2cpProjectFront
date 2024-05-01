import 'package:flutter/material.dart';
import 'package:prj/items/textfield2all.dart';

import 'package:prj/items/elvButton.dart';

class AddSkills extends StatelessWidget {
  const AddSkills({Key? key});

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
                Navigator.pop(context);
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
            'Add Skills',
            style: TextStyle(
              color: Color(0xFF2D3D51),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
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
                  'Add Your Skills. Enhance Your Profile :',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Skill',
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
                  'Where did you use if before',
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
                SizedBox(height: 8),
                Text(
                  'Add your image',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    fixedSize: MaterialStateProperty.all(Size(80, 5)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          color: Color(0xFF2D3D51),
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3D51),
                      fontSize: 12,
                    ),
                  ),
                )
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
