import 'package:flutter/material.dart';

// Assuming that the Homedialogue widget is imported from the appropriate file
import '../items/dialoogue.dart';
import 'edahabia.dart';
import 'report1.dart'; // Adjust the import path as needed

class ProfileDialogue extends StatelessWidget {
  final String s1;
  final String s2;

  const ProfileDialogue({
    Key? key,
    required this.s1,
    required this.s2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;

    return Dialog(
      child: Container(
        height: 190,
        width: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, right: 16, left: 16, bottom: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: NotifIcon(height: height, width: width),
              ),
              SizedBox(
                height: 12,
              ),
              Homedialogue(
                text: s1,
                color: Colors.white,
                logo: true,
                txtcolor: Color(0xFF2D3D51),
                onPressed: () {
                  Navigator.pop(context);

                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const Edahabia(),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Homedialogue(
                text: s2,
                color: Colors.white,
                logo: true,
                txtcolor: Colors.black,
                onPressed: () {
                  Navigator.pop(context);

                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const Report1(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotifIcon extends StatelessWidget {
  const NotifIcon({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: SizedBox(
        height: 24 * height,
        width: 24 * width,
        child: Image.asset(
          'assets/cancel_24px.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
