import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'package:prj/items/languagesclass.dart';

import 'package:prj/items/textfield2all.dart';
import 'package:provider/provider.dart';

import '../items/mainclass.dart';

// ignore: must_be_immutable
class Addlanguage extends StatefulWidget {
  Addlanguage({Key? key, this.theediteditemnumber}) : super(key: key);
  int? theediteditemnumber;
  @override
  State<Addlanguage> createState() => _AddlanguageState();
}

class _AddlanguageState extends State<Addlanguage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _langController = TextEditingController();
  late TextEditingController _profController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.theediteditemnumber != null) {
      var item = Provider.of<MainClass>(context, listen: false)
          .LanguagesitemList[widget.theediteditemnumber!];

      _langController = TextEditingController(text: item.language);
      _profController = TextEditingController(text: item.prof);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double height = screenHeight / 640;
    double width = screenWidth / 360;
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        leading: Padding(
          padding: EdgeInsets.only(top: 20 * height, left: 10 * width),
          child: CircleAvatar(
            backgroundColor: const Color(0x592D3D51),
            radius: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xFF2D3D51),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 20 * height),
          child: Text(
            (widget.theediteditemnumber == null)
                ? 'Add Language'
                : 'Edit Language',
            style: TextStyle(
              color: const Color(0xFF2D3D51),
              fontSize: 22 * width,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<MainClass>(builder: (context, Model, _) {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15 * height, left: 20 * width, right: 20 * width),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'choose the language that you can communicate whit :',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 12 * height),
                        Text(
                          'language',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _langController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .LanguagesitemList[
                                      widget.theediteditemnumber!]
                                  .language,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your language'
                              : null,
                        ),
                        Text(
                          'proficiency',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _profController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .LanguagesitemList[
                                      widget.theediteditemnumber!]
                                  .prof,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your proficiency '
                              : null,
                        ),
                        SizedBox(height: 6 * height),
                      
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15 * width),
              child: Mybuttons(
                text: 'Save',
                color: const Color(0xFF2D3D51),
                logo: false,
                assets: '',
                txtcolor: Colors.white,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    LanguagesClass newItem = LanguagesClass(
                        _langController.text, _profController.text);
                    if (widget.theediteditemnumber == null) {
                      Model.addLanguageItem(newItem);
                    } else {
                      Model.editLanguageItem(
                          widget.theediteditemnumber!, newItem);
                    }
                    Navigator.pop(
                        context); // or any other action you want to perform after saving
                  }
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
