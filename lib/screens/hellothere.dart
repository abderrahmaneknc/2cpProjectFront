import 'package:flutter/material.dart';
import 'package:prj/items/txtbutton.dart';
import 'package:prj/items/boxes.dart';
import 'package:prj/items/elvButton.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({Key? key}) : super(key: key);

  @override
  _MySignInPageState createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignUpPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: Padding(
          padding: const EdgeInsets.only(top: 32.0, right: 24, left: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(
                    fontFamily: "AeonikTRIAL",
                    height: 0.9,
                    fontSize: 33,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'There!',
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
                  show: false,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                MyBoxes(
                  hint: 'Re-enter your password',
                  icon: Icons.lock_outline,
                  show: false,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: Checkbox(
                          value: isChecked,
                          activeColor: const Color(0xFF2D3D51),
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue ?? false;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 40,
                        child: const Text(
                          'By signing up, you agree to our ',
                          style: TextStyle(
                            fontFamily: "AeonikTRIAL",
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 187,
                        top: -6.7,
                        child: MyTxtButtons(
                          weight: FontWeight.normal,
                          text: 'Terms and of Services',
                          color: const Color(0xFF2D3D51),
                          onPressed: () {},
                          size: 11,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 60,
                        child: MyTxtButtons(
                          weight: FontWeight.normal,
                          text: 'Privacy Policy',
                          color: const Color(0xFF2D3D51),
                          onPressed: () {},
                          size: 11,
                        ),
                      ),
                      Positioned(
                        top: 27,
                        left: 40,
                        child: const Text(
                          'and ',
                          style: TextStyle(
                            fontFamily: "AeonikTRIAL",
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Mybuttons(
                  text: 'Sign up',
                  color: const Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, 'email_verification');
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
                      child: Text(' OR '),
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
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: "AeonikTRIAL",
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    MyTxtButtons(
                      weight: FontWeight.normal,
                      text: 'Sign in',
                      color: const Color(0xFF2D3D51),
                      onPressed: () {
                        Navigator.pushNamed(context, 'signIn');
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
