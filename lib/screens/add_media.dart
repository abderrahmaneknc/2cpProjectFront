import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'package:prj/items/textfield.dart';
import 'package:provider/provider.dart';

import '../items/mainclass.dart';

class Addmedia extends StatefulWidget {
  const Addmedia({Key? key}) : super(key: key);

  @override
  State<Addmedia> createState() => _AddmediaState();
}

class _AddmediaState extends State<Addmedia> {
  late TextEditingController facebookController;
  late TextEditingController instagramController;
  late TextEditingController behanceController;
  late TextEditingController whatsappController;
  late TextEditingController gitController;
  late TextEditingController twitterController;
  late TextEditingController authoerController;
  // Add controllers for other text fields

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with any existing values
    facebookController = TextEditingController(
        text: Provider.of<MainClass>(context, listen: false).facebookString ??
            '');
    instagramController = TextEditingController(
        text: Provider.of<MainClass>(context, listen: false).instagramString ??
            '');
    // Initialize other controllers
    whatsappController = TextEditingController(
        text: Provider.of<MainClass>(context, listen: false).whatsappString ??
            '');
    behanceController = TextEditingController(
        text:
            Provider.of<MainClass>(context, listen: false).behanceString ?? '');
    gitController = TextEditingController(
        text:
            Provider.of<MainClass>(context, listen: false).githubString ?? '');
    twitterController = TextEditingController(
        text:
            Provider.of<MainClass>(context, listen: false).twitterString ?? '');
    authoerController = TextEditingController(
        text:
            Provider.of<MainClass>(context, listen: false).authorString ?? '');
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    facebookController.dispose();
    instagramController.dispose();
    behanceController.dispose();
    whatsappController.dispose();
    authoerController.dispose();
    gitController.dispose(); // Dispose of other controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: CircleAvatar(
            backgroundColor: const Color(0x592D3D51),
            radius: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'viewprofile');
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xFF2D3D51),
              ),
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            'Add Media',
            style: TextStyle(
              color: Color(0xFF2D3D51),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You can only add 4 of your media'
                      's links. If you want pls \n choose from the following:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Textfieldd(
                      texthint: 'Facebook',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setFacebookString(value);
                      },
                      controller: facebookController,
                    ),
                    Textfieldd(
                      texthint: 'Instagram',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setInstagramString(value);
                      },
                      controller: instagramController,
                    ),
                    Textfieldd(
                      texthint: 'GitHub',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setGithubString(value);
                      },
                      controller: gitController,
                    ),
                    Textfieldd(
                      texthint: 'Behance',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setBehanceString(value);
                      },
                      controller: behanceController,
                    ),
                    Textfieldd(
                      texthint: 'WhatsApp',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setWhatsappString(value);
                      },
                      controller: whatsappController,
                    ),
                    Textfieldd(
                      texthint: 'Twitter',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setTwitterString(value);
                      },
                      controller: twitterController,
                    ),
                    Textfieldd(
                      texthint: 'Author',
                      size: 16,
                      color: Color(0xFF2D3D51),
                      weight: FontWeight.w400,
                      onSave: (value) {
                        Provider.of<MainClass>(context, listen: false)
                            .setAuthorString(value);
                      },
                      controller: authoerController,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 34),
            child: Mybuttons(
              text: 'Save',
              color: const Color(0xFF2D3D51),
              logo: false,
              assets: '',
              txtcolor: Colors.white,
              onPressed: () {
                final mediaStrings =
                    Provider.of<MainClass>(context, listen: false);
                mediaStrings.setFacebookString(facebookController.text);
                mediaStrings.setInstagramString(instagramController.text);
                mediaStrings.setGithubString(gitController.text);
                mediaStrings.setBehanceString(behanceController.text);
                mediaStrings.setWhatsappString(whatsappController.text);
                mediaStrings.setTwitterString(twitterController.text);
                mediaStrings.setAuthorString(authoerController.text);
                Navigator.pushNamed(context, 'viewprofile');
              },
            ),
          ),
        ],
      ),
    );
  }
}
