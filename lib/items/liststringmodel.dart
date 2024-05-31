import 'package:flutter/foundation.dart';
import 'package:prj/items/exprienceitemsclass.dart';

import 'educationitemclass.dart';

class SelectedStringModel extends ChangeNotifier {
  List<String> selectedStrings = [];
  List<String> trasnforedStrings = [];
  List<ExprienceItemClass> ExperianceitemList = [ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs'),ExprienceItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs', 'kjsbs')];
  List<EducationItemClass> EducationItemList = [EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs'),EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs'),EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs'),EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs'),EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs'),EducationItemClass('njdv', 'jd', 'jdflns','kjsbs', 'kjsbs')];
  String? facebookString;
  String? instagramString;
  String? githubString;
  String? behanceString;
  String? whatsappString;
  String? twitterString;
  String? authorString;
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
