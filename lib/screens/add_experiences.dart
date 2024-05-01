import 'package:flutter/material.dart';
import 'package:prj/items/textfield2all.dart';

import 'package:prj/items/elvButton.dart';

class AddExperiences extends StatelessWidget {
  const AddExperiences({Key? key});

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
            'Add Experiences',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elevate your profile. Showcase your experiences :',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Textfieldd2(
                          maxCharacters: 80,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                        ),
                        SizedBox(height: 0),
                        Text(
                          'Employment type',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Textfieldd2(
                          maxCharacters: 80,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                        ),
                        SizedBox(height: 0),
                        Text(
                          'Company name',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        Textfieldd2(
                          maxCharacters: 80,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        Textfieldd2(
                          maxCharacters: 80,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                        ),
                        SizedBox(height: 0),
                        Text(
                          'Start date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFBFBFBFB),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ), // All border color
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 0.0),
                            counterStyle: TextStyle(color: Colors.grey[600]),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.black
                                    .withOpacity(0.5), // Adjust opacity here
                              ),
                              onPressed: () {
                                // Add your calendar button functionality here
                              },
                            ),
                          ),
                          style: TextStyle(),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'End date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFBFBFBFB),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ), // All border color
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 0.0),
                            counterStyle: TextStyle(color: Colors.grey[600]),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.black
                                    .withOpacity(0.5), // Adjust opacity here
                              ),
                              onPressed: () {
                                // Add your calendar button functionality here
                              },
                            ),
                          ),
                          style: TextStyle(),
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
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                              color: Color(0xFF2D3D51),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
