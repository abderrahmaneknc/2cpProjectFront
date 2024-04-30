import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'package:prj/items/textfield2all.dart';




class AddCertf extends StatelessWidget {
  const AddCertf({Key? key});

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
          'Education',
          style: TextStyle(
            color: Color(0xFF2D3D51),
            fontSize: 24,
            fontWeight: FontWeight.w800,
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
                          'Build trust. Add certifications & licenses now :',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'name',
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
                          'Issuing organization',
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
                          'Credential URL',
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
                          'Date',
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
                        SizedBox(height: 24),
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
