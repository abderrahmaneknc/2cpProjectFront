import 'package:flutter/material.dart';
import 'package:prj/screens/addResCors.dart';
import 'package:prj/screens/coursedetailedpage.dart';
import 'items/liststringmodel.dart';
import 'screens/addToProfile.dart';
import 'screens/add_media.dart';
import 'screens/resoursesdetailedpage.dart';
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

import 'package:provider/provider.dart';

// import your model file

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SelectedStringModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => IntroductionPages(),
          'signIn': (context) => MySignInPage(),
          'signUp': (context) => MySignUpPage(),
          'bckDhabia': (context) => Edahbback(),
          'success_after_payment': (context) => Success(),
          'add_toprofile': (context) => AddToProfile(),
          'add_media': (context) => Addmedia(),
            'addrescors': (context) => AddResCors(),
          'add_fields': (context) => Addfields(),
          'add_language': (context) => Addlanguage(),
          'add_education': (context) => AddEducation(),
          'add_certf': (context) => AddCertf(),
          'add_skills': (context) => AddSkills(),
          'add_experiences': (context) => AddExperiences(),
          'email_verification': (context) => EmailVerification(),
          'verified': (context) => verified(),
          'viewprofile': (context) => ViewProfile(),
          'profile': (context) => const MyProfile(),
          'addBlog': (context) => const AddBLog(),
          'blogs': (context) => const BlogsScreen(),
          'blogsds': (context) => BlogsDetailScreen(),
          'btnavbarhome': (context) => MyBottomNavigationBar(
                currentIndex: 0,
              ),
          'btnavbarblogs': (context) => MyBottomNavigationBar(
                currentIndex: 1,
              ),
          'btnavbarres/cor': (context) => MyBottomNavigationBar(
                currentIndex: 2,
              ),
          'btnavbarprofile': (context) => MyBottomNavigationBar(
                currentIndex: 3,
              ),
          'b': (context) => const ResCorPage(),
          'resdp': (context) => const ResoursesDP(),
          'cordp': (context) => const CourseDP(),
        });
  }
}
