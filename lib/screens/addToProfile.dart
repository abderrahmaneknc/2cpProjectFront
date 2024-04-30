import 'package:flutter/material.dart';
import 'package:prj/items/txtbutton.dart';

class AddToProfile extends StatelessWidget {
  const AddToProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        title: Text('Add To Profile',
            style: TextStyle(
                color: Color(0xFF2D3D51),
                fontSize: 24,
                fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start with the basics. you must fill the following:\nusername, main profession, about, what I am good at.\nFilling the section at the bottom will help you be discovered and chosen',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Media',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_media');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Select What Are You Good At (Fields)',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_fields');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Activity',
                color: Color(0xFF2D3D51),
                onPressed: () {},
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Education',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_education');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Language',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_language');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Skills',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_skills');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Experiences',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_experiences');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              ),
              MyTxtButtons(
                weight: FontWeight.w400,
                text: 'Add Licenses & Certifications',
                color: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pushNamed(context, 'add_certf');
                },
                size: 16,
              ),
              Divider(
                color: Color(0xFF2D3D51),
                height: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
