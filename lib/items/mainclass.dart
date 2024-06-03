import 'package:flutter/foundation.dart';

import 'package:prj/items/exprienceitemsclass.dart';
import 'package:prj/items/languageitem.dart';
import 'package:prj/items/languagesclass.dart';
import 'package:prj/items/lissclass.dart';
import 'package:prj/items/saveditem.dart';

import 'educationitemclass.dart';
import 'skillsclass.dart';

class MainClass extends ChangeNotifier {
  List<SavedItem> SavedBlogs = [
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: ''),
    SavedItem(title1: 'lolo', title2: 'nono', timestamp: '')
  ];
  List<String> selectedStrings = [];
  List<String> trasnforedStrings = [];
  List<LanguagesClass> LanguagesitemList = [
    LanguagesClass('ENGLISH', 'My profecien')
  ];
  List<SkillsClass> SkillsitemList = [
    SkillsClass('Web Dev', 'Wehre i get it from')
  ];
  List<LissClass> LisitemList = [
    LissClass('Daoud the Dev', 'ESI', 'My URL', '2 years')
  ];
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
  //blogs management
  void addBlogItem(SavedItem item) {
    SavedBlogs.add(item);
    notifyListeners();
  }

  // Skills management
  void addSkillItem(SkillsClass item) {
    SkillsitemList.add(item);
    notifyListeners();
  }

  void editSkillItem(int i, SkillsClass editedItem) {
    SkillsitemList[i] = editedItem;
    notifyListeners();
  }

  void deleteSkillItem(int index) {
    SkillsitemList.removeAt(index);
    notifyListeners();
  }

  // Languages management
  void addLanguageItem(LanguagesClass item) {
    LanguagesitemList.add(item);
    notifyListeners();
  }

  void editLanguageItem(int i, LanguagesClass editedItem) {
    LanguagesitemList[i] = editedItem;
    notifyListeners();
  }

  void deleteLanguageItem(int index) {
    LanguagesitemList.removeAt(index);
    notifyListeners();
  }

  // List management
  void addLisItem(LissClass item) {
    LisitemList.add(item);
    notifyListeners();
  }

  void editLisItem(int i, LissClass editedItem) {
    LisitemList[i] = editedItem;
    notifyListeners();
  }

  void deleteLisItem(int index) {
    LisitemList.removeAt(index);
    notifyListeners();
  }

  // Education management
  void addEducationItem(EducationItemClass item) {
    EducationItemList.add(item);
    notifyListeners();
  }

  void editEducationItem(int i, EducationItemClass editedItem) {
    EducationItemList[i] = editedItem;
    notifyListeners();
  }

  void deleteEducationItem(int index) {
    EducationItemList.removeAt(index);
    notifyListeners();
  }

  // Experience management
  void addExperienceItem(ExprienceItemClass item) {
    ExperianceitemList.add(item);
    notifyListeners();
  }

  void editExperienceItem(int i, ExprienceItemClass editedItem) {
    ExperianceitemList[i] = editedItem;
    notifyListeners();
  }

  void deleteExperienceItem(int index) {
    ExperianceitemList.removeAt(index);
    notifyListeners();
  }

//seperated
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
