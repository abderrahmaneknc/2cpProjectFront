import 'package:flutter/material.dart';
import 'screens/edhabiabackground.dart';
import 'screens/hellothere.dart';
import 'screens/introductionPages.dart';
import 'screens/viewprofile.dart';
import 'success.dart';
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
      initialRoute: 'profile',
      routes: {
        '/': (context) => IntroductionPages(),
        '//': (context) => Welcback(),
        '///': (context) => MySignInPage(),
        '////': (context) => Edahbback(),
        '/////': (context) => Success(),
         'profile': (context) => ViewProfile(),
      },
    );
  }
}
