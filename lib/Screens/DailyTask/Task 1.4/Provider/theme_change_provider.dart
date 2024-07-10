import 'package:flutter/material.dart';

class ChangeThemeProvider extends ChangeNotifier {
  bool isDark = false;
 bool darkMode = false;
  void changeTheme(bool value) {
    isDark = value;
    notifyListeners();
  }
  void changeName(bool value) {
    darkMode = value;
    notifyListeners();
  }
}