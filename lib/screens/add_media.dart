import 'package:flutter/material.dart';

import 'package:prj/items/elvButton.dart';
import 'package:prj/items/textfield.dart';

class Addmedia extends StatelessWidget {
  const Addmedia({super.key});

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
            'Add Media',
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
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You can only add 4 of your media'
                      's links. If you want pls \n choose from the following:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16),
                    Textfieldd(
                      texthint: 'Facebook',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Instagram',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Git Hub',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Brhance',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Whatsapp',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Twitter',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                    Textfieldd(
                      texthint: 'Auther',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 34),
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
