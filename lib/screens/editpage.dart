// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:prj/items/liststringmodel.dart';
import 'package:provider/provider.dart';

import '../items/educationitem.dart';
import '../items/exprienceitem.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key, required this.editedpagenumber});
  int editedpagenumber;
  @override
  Widget build(BuildContext context) {
    List<String> pagesitems = ['Experiances', 'Education'];
    return SafeArea(
      child: Scaffold(
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
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'Edit ${pagesitems[editedpagenumber]}',
              style: const TextStyle(
                color: Color(0xFF2D3D51),
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Consumer<SelectedStringModel>(
            builder: (context, selectedStringModel, _) {
          int? length;
          switch (editedpagenumber) {
            case 0:
              length = selectedStringModel.ExperianceitemList.length;
              break;
            case 1:
              length = selectedStringModel.EducationItemList.length;
              break;
          }
          double screenWidth = MediaQuery.of(context).size.width;
          double screenHeight = MediaQuery.of(context).size.height;
          double height = screenHeight / 640;
          double width = screenWidth / 360;
          return SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(20.0 * height),
            child: Column(
              children: [
                for (int i = 0; i < length!; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (editedpagenumber == 0)
                        ExprianceItem(ineditpage: true,
                          title:
                              selectedStringModel.ExperianceitemList[i].title,
                          companyname: selectedStringModel
                              .ExperianceitemList[i].companyname,
                          emplname: selectedStringModel
                              .ExperianceitemList[i].emplname,
                          location: selectedStringModel
                              .ExperianceitemList[i].location,
                          enddate:
                              selectedStringModel.ExperianceitemList[i].enddate,
                          startdate: selectedStringModel
                              .ExperianceitemList[i].startdate,itemnumber: i,
                        )
                      else if (editedpagenumber == 1)
                        EducationItem(ineditpage: true,itemnumber: i,
                          school:
                              selectedStringModel.EducationItemList[i].school,
                          fieldofstudy: selectedStringModel
                              .EducationItemList[i].fieldofstudy,
                          degree:
                              selectedStringModel.EducationItemList[i].degree,
                          enddate:
                              selectedStringModel.EducationItemList[i].enddate,
                          startdate: selectedStringModel
                              .EducationItemList[i].startdate,
                        ),
                      if (i != length - 1)
                        const Divider(), // Add a divider after each item except the last one
                    ],
                  ),
              ],
            ),
          ));
        }),
      ),
    );
  }
}
