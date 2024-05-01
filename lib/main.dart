import 'package:flutter/material.dart';
import 'screens/addToProfile.dart';
import 'screens/add_media.dart';
import 'screens/verified.dart';
import 'screens/addBlog.dart';
import 'screens/add_certf.dart';
import 'screens/add_education.dart';
import 'screens/add_experiences.dart';
import 'screens/add_fields.dart';
import 'screens/add_language.dart';
import 'screens/add_skills.dart';
import 'screens/blogsscreen.dart';
import 'screens/bologsdetailedscreen.dart';
import 'package:prj/screens/bottomnavbar.dart';
import 'screens/edhabiabackground.dart';
import 'screens/email_verification.dart';
import 'screens/hellothere.dart';
import 'screens/introductionPages.dart';
import 'screens/rescorpage.dart';
import 'screens/success.dart';
import 'screens/welcomeback.dart';
import 'screens/profilescreen.dart';
import 'screens/viewprofile.dart';

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
        initialRoute: 'signIn',
        routes: {
          '/': (context) => IntroductionPages(),
          'signIn': (context) => MySignInPage(),
          'signUp': (context) => MySignUpPage(),
          'bckDhabia': (context) => Edahbback(),
          'success_after_payment': (context) => Success(),
          'add_toprofile': (context) => AddToProfile(),
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
          'blogs': (context) => BlogsScreen(),
          'blogsds': (context) => BlogsDetailScreen(),
          'btnavbar': (context) => MyBottomNavigationBar(),
          'b': (context) => ResCorPage(),
        });
  }
}
