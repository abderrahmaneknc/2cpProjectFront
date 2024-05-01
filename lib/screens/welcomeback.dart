import 'package:flutter/material.dart';
import 'package:prj/items/boxes.dart';
import 'forgotpassword.dart';
import 'package:prj/items/elvButton.dart';

import 'package:prj/items/txtbutton.dart';

class MySignInPage extends StatefulWidget {
  const MySignInPage({Key? key}) : super(key: key);

  @override
  _WelcbackState createState() => _WelcbackState();
}

class _WelcbackState extends State<MySignInPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: Padding(
          padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    height: 0.9,
                    fontSize: 33,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Back!',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    height: 1,
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign in to unlock exclusive features, tailored experiences, and seamless access to your account.',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyBoxes(
                  hint: 'Enter your email',
                  icon: Icons.email_outlined,
                  show: false,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                MyBoxes(
                  hint: 'Enter your password',
                  icon: Icons.lock_outline,
                  show: true,
                  isPassword: true,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: Colors.blue,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me ',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    MyTxtButtons(
                      text: 'Forget password',
                      weight: FontWeight.normal,
                      color: Color(0xFF2D3D51),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom,
                                ),
                                child: const buildSheet(),
                              ),
                            );
                          },
                        );
                      },
                      size: 13,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Mybuttons(
                  text: 'Sign in',
                  color: const Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, 'btnavbar');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: const Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        ' OR ',
                        style: TextStyle(
                          fontFamily: "AeonikTRIAL",
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Mybuttons(
                  text: 'Sign in with Google',
                  color: Colors.white,
                  logo: true,
                  assets: 'assets/google_logo_icon_147282.png',
                  txtcolor: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, 'btnavbar');
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    MyTxtButtons(
                      weight: FontWeight.normal,
                      text: 'Create an account',
                      color: const Color(0xFF2D3D51),
                      onPressed: () {
                        Navigator.pushNamed(context, 'signUp');
                      },
                      size: 13,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
