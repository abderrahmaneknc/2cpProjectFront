import 'package:flutter/material.dart';
import 'boxes.dart';
import 'elvButton.dart';
import 'forgotpassword.dart';
import 'txtbutton.dart';

class Welcback extends StatefulWidget {
  const Welcback({Key? key}) : super(key: key);

  @override
  _WelcbackState createState() => _WelcbackState();
}

class _WelcbackState extends State<Welcback> {
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
                const Text(
                  'Welcome',
                  style: TextStyle(
                    height: 0.9,
                    fontSize: 33,
                    color: Color(0xFF2D3D51),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Back!',
                  style: TextStyle(
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
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyBoxes(
                  hint: 'enter your email',
                  icon: Icons.email_outlined,
                  show: false,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                MyBoxes(
                  hint: 'enter your password',
                  icon: Icons.lock_outline,
                  show: true,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 25,
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
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    const Spacer(),
                    MyTxtButtons(
                      text: 'Forget password',
                      color: const Color(0xFF2D3D51),
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
                  onPressed: () { Navigator.pushNamed(context, 'btnavbar');},
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
                      text: 'Create an account',
                      color: const Color(0xFF2D3D51),
                      onPressed: () {
                        Navigator.pushNamed(context, '///');
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
