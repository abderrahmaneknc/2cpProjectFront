import 'package:flutter/material.dart';
import 'package:prj/screens/blogsscreen.dart';
import 'package:prj/screens/bologsdetailedscreen.dart';
import 'package:prj/screens/bottomnavbar.dart';
import 'package:prj/screens/profilescreen.dart';
import 'screens/edhabiabackground.dart';
import 'screens/hellothere.dart';
import 'screens/introductionPages.dart';
import 'screens/rescorpage.dart';
import 'screens/success.dart';
import 'screens/viewprofile.dart';
import 'screens/welcomeback.dart';

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
        
      },
    );
  }
}
