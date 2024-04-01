import 'package:flutter/material.dart';
import 'package:prj/screens/profilescreen.dart';
import 'screens/edhabiabackground.dart';
import 'screens/hellothere.dart';
import 'screens/introductionPages.dart';
import 'screens/success.dart';
import 'screens/viewprofile.dart';
import 'screens/welcomeback.dart';

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
         'viewprofile': (context) => ViewProfile(),
         'profile':(context) => MyProfile(),
      },
    );
  }
}
