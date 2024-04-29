import 'package:flutter/material.dart';
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
