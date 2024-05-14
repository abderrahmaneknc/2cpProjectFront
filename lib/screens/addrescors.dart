import 'package:flutter/material.dart';

import 'package:prj/items/elvButton.dart';
import 'package:prj/items/textfield2all.dart';

class AddResCors extends StatefulWidget {
  const AddResCors({Key? key}) : super(key: key);

  @override
  _AddResCorsState createState() => _AddResCorsState();
}

class _AddResCorsState extends State<AddResCors> {
  String? selectedOption;

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
            'Add Res\\cour',
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
                          'Enrich our community by contributing your courses and resources :',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Categories (only one)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                        ),
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
                          'Select res\\cour',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 'resources',
                              groupValue: selectedOption,
                              activeColor: Color(0xFF2D3D51),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value as String?;
                                });
                              },
                            ),
                            Text(
                              'Resources',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF2D3D51),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            Radio(
                              value: 'courses',
                              groupValue: selectedOption,
                              activeColor: Color(0xFF2D3D51),
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value as String?;
                                });
                              },
                            ),
                            Text(
                              'Courses',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF2D3D51),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0),
                        Text(
                          'Discription',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Textfieldd2(
                          maxCharacters: 1000,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Your links',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Textfieldd2(
                          maxCharacters: 1000,
                          texthint: '',
                          size: 16,
                          color: Color(0xFF2D3D51),
                          weight: FontWeight.w400,
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
            ),
          ),
        ],
      ),
    );
  }
}
