import 'package:flutter/material.dart';

class ChangeThemeProvider extends ChangeNotifier {
  bool isDark = false;
  void changeTheme(bool value) {
    isDark = value;
    notifyListeners();
  }
}