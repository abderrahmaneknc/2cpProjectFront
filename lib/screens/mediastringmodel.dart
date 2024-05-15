import 'package:flutter/material.dart';

class MediaStrings extends ChangeNotifier {
  String? _facebookText;
  String? _instagramText;
  String? _githubText;
  String? _behanceText;
  String? _whatsappText;
  String? _twitterText;
  String? _authorText;

  String? get facebookText => _facebookText;
  set facebookText(String? value) {
    _facebookText = value;
    notifyListeners();
  }

  String? get instagramText => _instagramText;
  set instagramText(String? value) {
    _instagramText = value;
    notifyListeners();
  }

  String? get githubText => _githubText;
  set githubText(String? value) {
    _githubText = value;
    notifyListeners();
  }

  String? get behanceText => _behanceText;
  set behanceText(String? value) {
    _behanceText = value;
    notifyListeners();
  }

  String? get whatsappText => _whatsappText;
  set whatsappText(String? value) {
    _whatsappText = value;
    notifyListeners();
  }

  String? get twitterText => _twitterText;
  set twitterText(String? value) {
    _twitterText = value;
    notifyListeners();
  }

  String? get authorText => _authorText;
  set authorText(String? value) {
    _authorText = value;
    notifyListeners();
  }

  List<String> get mediaStrings => [
    _facebookText ?? '',
    _instagramText ?? '',
    _githubText ?? '',
    _behanceText ?? '',
    _whatsappText ?? '',
    _twitterText ?? '',
    _authorText ?? '',
  ];

  void addMediaStrings(List<String> strings) {
    for (int i = 0; i < strings.length; i++) {
      switch (i) {
        case 0:
          _facebookText = strings[i];
          break;
        case 1:
          _instagramText = strings[i];
          break;
        case 2:
          _githubText = strings[i];
          break;
        case 3:
          _behanceText = strings[i];
          break;
        case 4:
          _whatsappText = strings[i];
          break;
        case 5:
          _twitterText = strings[i];
          break;
        case 6:
          _authorText = strings[i];
          break;
      }
    }
    notifyListeners();
  }
}
