import 'package:flutter/foundation.dart';
import 'package:prj/items/exprienceitemsclass.dart';
import 'package:prj/items/languagesclass.dart';
import 'package:prj/items/lissclass.dart';

import 'educationitemclass.dart';
import 'skillsclass.dart';

class SelectedStringModel extends ChangeNotifier {
  List<String> selectedStrings = [];
  List<String> trasnforedStrings = [];
  List<LanguagesClass> LanguagesitemList = [];
   List<SkillsClass> SkillsitemList = [];
  List<LissClass> LisitemList = [];
  List<ExprienceItemClass> ExperianceitemList = [
    ExprienceItemClass('ESI', 'MOhamed abdelah el mahboul', '', 'algeria',
        'nhar tnin-2017', 'b larb3a 2020'),
  ];
  List<EducationItemClass> EducationItemList = [
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs'),
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs'),
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs'),
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs'),
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs'),
    EducationItemClass('njdv', 'jd', 'jdflns', 'kjsbs', 'kjsbs')
  ];
  String? facebookString;
  String? instagramString;
  String? githubString;
  String? behanceString;
  String? whatsappString;
  String? twitterString;
  String? authorString;

 void editlanguageItem(int i, LanguagesClass editedItem) {
    LanguagesitemList[i] = editedItem;
    notifyListeners();
  }

  void addlanguageItem(LanguagesClass item) {
    LanguagesitemList.add(item);
    notifyListeners();
  }



 void editskilItem(int i, SkillsClass editedItem) {
    SkillsitemList[i] = editedItem;
    notifyListeners();
  }

  void addskilItem(SkillsClass item) {
    SkillsitemList.add(item);
    notifyListeners();
  }
  void editLisItem(int i, LissClass editedItem) {
    LisitemList[i] = editedItem;
    notifyListeners();
  }

  void addLisItem(LissClass item) {
    LisitemList.add(item);
    notifyListeners();
  }

  void editEducationItem(int i, EducationItemClass editedItem) {
    EducationItemList[i] = editedItem;
    notifyListeners();
  }

  void addEducationItem(EducationItemClass item) {
    EducationItemList.add(item);
    notifyListeners();
  }

  void editExperainceItem(int i, ExprienceItemClass editedItem) {
    ExperianceitemList[i] = editedItem;
    notifyListeners();
  }

  void addExperienceItem(ExprienceItemClass item) {
    ExperianceitemList.add(item);
    notifyListeners();
  }

  void setFacebookString(String value) {
    facebookString = value;
    notifyListeners();
  }

  void setInstagramString(String value) {
    instagramString = value;
    notifyListeners();
  }

  void setGithubString(String value) {
    githubString = value;
    notifyListeners();
  }

  void setBehanceString(String value) {
    behanceString = value;
    notifyListeners();
  }

  void setWhatsappString(String value) {
    whatsappString = value;
    notifyListeners();
  }

  void setTwitterString(String value) {
    twitterString = value;
    notifyListeners();
  }

  void setAuthorString(String value) {
    authorString = value;
    notifyListeners();
  }
}
