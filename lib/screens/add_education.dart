import 'package:flutter/material.dart';

import 'package:prj/items/educationitemclass.dart';

import 'package:prj/items/elvButton.dart';
import 'package:prj/items/textfield2all.dart';
import 'package:provider/provider.dart';

import '../items/mainclass.dart';

// ignore: must_be_immutable
class AddEducation extends StatefulWidget {
  AddEducation({Key? key, this.theediteditemnumber}) : super(key: key);
  int? theediteditemnumber;

  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _schoolcontrller = TextEditingController();
  late TextEditingController _fieldofstudycontroller = TextEditingController();
  late TextEditingController _degreecontroller = TextEditingController();

  late TextEditingController _startDateController = TextEditingController();
  late TextEditingController _endDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.theediteditemnumber != null) {
      var item = Provider.of<MainClass>(context, listen: false)
          .EducationItemList[widget.theediteditemnumber!];

      _schoolcontrller = TextEditingController(text: item.school);
      _fieldofstudycontroller = TextEditingController(text: item.fieldofstudy);
      _degreecontroller = TextEditingController(text: item.degree);

      _startDateController = TextEditingController(text: item.startdate);
      _endDateController = TextEditingController(text: item.enddate);
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
                ? 'Add Education'
                : 'Edit Education',
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
                          'choose your main school and degree :',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 12 * height),
                        Text(
                          'School',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _schoolcontrller,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .EducationItemList[
                                      widget.theediteditemnumber!]
                                  .school,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your schhol name'
                              : null,
                        ),
                        Text(
                          'field of study',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _fieldofstudycontroller,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .EducationItemList[
                                      widget.theediteditemnumber!]
                                  .fieldofstudy,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your field  of study'
                              : null,
                        ),
                        Text(
                          'degree ',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _degreecontroller,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .EducationItemList[
                                      widget.theediteditemnumber!]
                                  .degree,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your  degree'
                              : null,
                        ),
                        SizedBox(height: 4 * height),
                        Text(
                          'Start date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        TextField(
                          controller: _startDateController,
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
                                : Model
                                    .EducationItemList[
                                        widget.theediteditemnumber!]
                                    .startdate,
                          ),
                        ),
                        Text(
                          'End date',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        TextField(
                          controller: _endDateController,
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
                                ? 'Select End Date'
                                : Model
                                    .EducationItemList[
                                        widget.theediteditemnumber!]
                                    .startdate,
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
                    EducationItemClass newItem = EducationItemClass(
                      _schoolcontrller.text,
                      _fieldofstudycontroller.text,
                      _degreecontroller.text,
                      _startDateController.text,
                      _endDateController.text,
                    );
                    if (widget.theediteditemnumber == null) {
                      Model.addEducationItem(newItem);
                    } else {
                      Model.editEducationItem(
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
