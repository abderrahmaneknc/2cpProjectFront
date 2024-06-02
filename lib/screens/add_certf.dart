import 'package:flutter/material.dart';
import 'package:prj/items/elvButton.dart';
import 'package:prj/items/lissclass.dart';
import 'package:prj/items/textfield2all.dart';
import 'package:provider/provider.dart';

import '../items/mainclass.dart';

// ignore: must_be_immutable
class AddCertf extends StatefulWidget {
  AddCertf({Key? key, this.theediteditemnumber}) : super(key: key);
  int? theediteditemnumber;
  @override
  State<AddCertf> createState() => _AddCertfState();
}

class _AddCertfState extends State<AddCertf> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController = TextEditingController();
  late TextEditingController _orgController = TextEditingController();
  late TextEditingController _urlController = TextEditingController();
  late TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.theediteditemnumber != null) {
      var item = Provider.of<MainClass>(context, listen: false)
          .LisitemList[widget.theediteditemnumber!];

      _nameController = TextEditingController(text: item.name);
      _orgController = TextEditingController(text: item.issorg);
      _urlController = TextEditingController(text: item.url);
      _dateController = TextEditingController(text: item.date);
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
                ? 'Add Certfication'
                : 'Edit Certfication',
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
                          'build trust add your cert and liss',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 12 * height),
                        Text(
                          'name',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _nameController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model.LisitemList[widget.theediteditemnumber!]
                                  .name,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your  name'
                              : null,
                        ),
                        Text(
                          'org',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _orgController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model.LisitemList[widget.theediteditemnumber!]
                                  .issorg,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your org '
                              : null,
                        ),
                        Text(
                          'url',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _urlController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .LisitemList[widget.theediteditemnumber!].url,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your  url'
                              : null,
                        ),
                        SizedBox(height: 4 * height),
                        Text(
                          'date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        TextField(
                          controller: _dateController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFBFBFBFB),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFF2D3D51)),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 0.0),
                            counterStyle: TextStyle(color: Colors.grey[600]),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.black.withOpacity(0.6),
                              ),
                              onPressed: () {
                                // implement date picker logic
                              },
                            ),
                            hintText: (widget.theediteditemnumber == null)
                                ? 'Select Start Date'
                                : Model.LisitemList[widget.theediteditemnumber!]
                                    .date,
                          ),
                        ),
                        SizedBox(height: 6 * height),
                        Text(
                          'Add your image',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            fixedSize:
                                MaterialStateProperty.all(const Size(80, 5)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(
                                  color: Color(0xFF2D3D51),
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: const Color(0xFF2D3D51),
                              fontSize: 10 * width,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
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
                    LissClass newItem = LissClass(
                      _nameController.text,
                      _orgController.text,
                      _urlController.text,
                      _dateController.text,
                    );
                    if (widget.theediteditemnumber == null) {
                      Model.addLisItem(newItem);
                    } else {
                      Model.editLisItem(widget.theediteditemnumber!, newItem);
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
