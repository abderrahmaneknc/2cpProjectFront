import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:prj/addToProfile.dart';
import 'package:prj/add_media.dart';
import 'package:prj/verified.dart';
import 'addBlog.dart';
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
=======
import 'package:prj/blogsscreen.dart';
import 'package:prj/bologsdetailedscreen.dart';

import 'bottomnavbar.dart';
import 'edhabiabackground.dart';
import 'hellothere.dart';
import 'introductionPages.dart';
import 'profilescreen.dart';

import 'rescorpage.dart';
import 'success.dart';
import 'viewprofile.dart';
import 'welcomeback.dart';
>>>>>>> c57d7881da6ffeef9a07581fe7066fead5eb6f28

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      initialRoute: 'addBlog',
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
        'profile': (context) => MyProfile(),
        'addBlog': (context) => AddBLog(),
=======
      initialRoute: 'b',
      routes: {
        '/': (context) => IntroductionPages(),
        '//': (context) => const Welcback(),
        '///': (context) => const MySignInPage(),
        '////': (context) => const Edahbback(),
        '/////': (context) => const Success(),
        'viewprofile': (context) => ViewProfile(),
        'profile': (context) => const MyProfile(),
        'blogs': (context) => BlogsScreen(),
        'blogsds': (context) => BlogsDetailScreen(),
        'btnavbar':(context) => MyBottomNavigationBar(),
       'b':(context) => ResCorPage(),
        
>>>>>>> c57d7881da6ffeef9a07581fe7066fead5eb6f28
      },
    );
  }
}
