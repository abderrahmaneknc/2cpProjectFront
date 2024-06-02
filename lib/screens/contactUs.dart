import 'package:flutter/material.dart';

import '../items/elvButton.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Color(0xFFFBFBFB),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: CircleAvatar(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: const Color(0xFF2D3D51),
                ),
              ),
              backgroundColor: const Color(0x592D3D51),
              radius: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3D51),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Have questions or encountered issues? Drop them below! Our support team is ready to address your queries and concerns promptly, ensuring a smooth and enjoyable experience for you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    hintText: 'write your message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color(0xFF2D3D51),
                      ), // Color for focused state
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Mybuttons(
                  text: 'Send',
                  color: const Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, 'complete');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
