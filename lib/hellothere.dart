import 'package:flutter/material.dart';
import 'txtbutton.dart';
import 'boxes.dart';
import 'elvButton.dart';

class MySignInPage extends StatefulWidget {
  const MySignInPage({Key? key}) : super(key: key);

  @override
  _MySignInPageState createState() => _MySignInPageState();
}

class _MySignInPageState extends State<MySignInPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    height: 0.9,
                    fontSize: 33,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'There',
                  style: TextStyle(
                    height: 1,
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign in to unlock exclusive features, tailored experiences, and seamless access to your account.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MyBoxes(
                  hint: 'enter your email',
                  icon: Icons.email_outlined,
                  show: false,
                ),
                SizedBox(
                  height: 16,
                ),
                MyBoxes(
                  hint: 'enter your password',
                  icon: Icons.lock_outline,
                  show: false,
                ),
                SizedBox(
                  height: 16,
                ),
                MyBoxes(
                  hint: 'Re-enter your password',
                  icon: Icons.lock_outline,
                  show: false,
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              isChecked = newValue ?? false;
                            });
                          },
                        ),
                        Text(
                          'By signing up, you agree to our',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        MyTxtButtons(
                          text: 'terms and services',
                          color: Color(0xFF2D3D51),
                          onPressed: () {},
                          size: 11,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text(
                            'and',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                          MyTxtButtons(
                            text: 'Privacy Policy',
                            color: Color(0xFF2D3D51),
                            onPressed: () {},
                            size: 11,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Mybuttons(
                  text: 'Sign up',
                  color: Color(0xFF2D3D51),
                  logo: false,
                  assets: '',
                  txtcolor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(' OR '),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                SizedBox(
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    MyTxtButtons(
                      text: 'Sign in',
                      color: Color(0xFF2D3D51),
                      onPressed: () {
                        Navigator.pushNamed(context, '//');
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
