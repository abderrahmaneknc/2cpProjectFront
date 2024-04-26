import 'package:flutter/material.dart';
import 'package:prj/addToProfile.dart';
import 'package:prj/add_media.dart';
import 'package:prj/verified.dart';
import 'add_certf.dart';
import 'add_education.dart';
import 'add_experiences.dart';
import 'add_fields.dart';
import 'add_language.dart';
import 'add_skills.dart';
import 'edhabiabackground.dart';
import 'email_verification.dart';
import 'hellothere.dart';
import 'introductionPages.dart';
import 'success.dart';
import 'welcomeback.dart';
import 'profilescreen.dart';
import 'viewprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => IntroductionPages(),
        '//': (context) => Welcback(),
        '///': (context) => MySignInPage(),
        '////': (context) => Edahbback(),
        '/////': (context) => Success(),
        '//////': (context) => AddToProfile(),
        'add_media': (context) => Addmedia(),
        'add_fields': (context) => Addfields(),
        'add_language': (context) => Addlanguage(),
        'add_education': (context) => AddEducation(),
        'add_certf': (context) => AddCertf(),
        'add_skills': (context) => AddSkills(),
        'add_experiences': (context) => AddExperiences(),
        'email_verification': (context) => EmailVerification(),
        'verified': (context) => verified(),
         'viewprofile': (context) => ViewProfile(),
         'profile':(context) => MyProfile(),
      },
    );
  }
}
