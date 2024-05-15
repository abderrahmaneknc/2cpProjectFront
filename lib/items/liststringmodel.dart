import 'package:flutter/foundation.dart';

class SelectedStringModel extends ChangeNotifier {
  List<String> selectedStrings = [];
List<String> trasnforedStrings = [];
 String? facebookString;
  String? instagramString;
  String? githubString;
  String? behanceString;
  String? whatsappString;
  String? twitterString;
  String? authorString;

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