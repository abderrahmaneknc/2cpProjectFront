import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../items/elvButton.dart';
import '../items/exprienceitemsclass.dart';
import '../items/liststringmodel.dart';
import '../items/textfield2all.dart';

// ignore: must_be_immutable
class AddExperiences extends StatefulWidget {
  AddExperiences({Key? key, this.theediteditemnumber}) : super(key: key);
  int? theediteditemnumber;
  @override
  _AddExperiencesState createState() => _AddExperiencesState();
}

class _AddExperiencesState extends State<AddExperiences> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _titleController = TextEditingController();
  late TextEditingController _emplTypeController = TextEditingController();
  late TextEditingController _companyNameController = TextEditingController();
  late TextEditingController _locationController = TextEditingController();
  late TextEditingController _startDateController = TextEditingController();
  late TextEditingController _endDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.theediteditemnumber != null) {
      var item = Provider.of<SelectedStringModel>(context, listen: false)
          .ExperianceitemList[widget.theediteditemnumber!];

      _titleController = TextEditingController(text: item.title);
      _emplTypeController = TextEditingController(text: item.emplname);
      _companyNameController = TextEditingController(text: item.companyname);
      _locationController = TextEditingController(text: item.location);
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
                ? 'Add Experiances'
                : 'Edit Experiances',
            style: TextStyle(
              color: const Color(0xFF2D3D51),
              fontSize: 22 * width,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<SelectedStringModel>(builder: (context, Model, _) {
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
                          'Elevate your profile. Showcase your experiences:',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 12 * height),
                        Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _titleController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .ExperianceitemList[
                                      widget.theediteditemnumber!]
                                  .title,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter a title'
                              : null,
                        ),
                        Text(
                          'Employment type',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _emplTypeController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .ExperianceitemList[
                                      widget.theediteditemnumber!]
                                  .emplname,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter employment type'
                              : null,
                        ),
                        Text(
                          'Company name',
                          style: TextStyle(
                            fontSize: 10 * width,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _companyNameController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .ExperianceitemList[
                                      widget.theediteditemnumber!]
                                  .companyname,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter company name'
                              : null,
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 4 * height),
                        Textfieldd2(
                          controller: _locationController,
                          maxCharacters: 80,
                          texthint: (widget.theediteditemnumber == null)
                              ? ''
                              : Model
                                  .ExperianceitemList[
                                      widget.theediteditemnumber!]
                                  .location,
                          size: 15 * width,
                          color: const Color(0xFF2D3D51),
                          weight: FontWeight.w400,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter location'
                              : null,
                        ),
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
                                    .ExperianceitemList[
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
                                    .ExperianceitemList[
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
                    ExprienceItemClass newItem = ExprienceItemClass(
                      _titleController.text,
                      _emplTypeController.text,
                      _companyNameController.text,
                      _locationController.text,
                      _startDateController.text,
                      _endDateController.text,
                    );
                    if (widget.theediteditemnumber == null) {
                      Model.addExperienceItem(newItem);
                    } else {
                      Model.editExperainceItem(
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
