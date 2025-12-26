import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode? _themeMode;

  ThemeMode? get themeMode => _themeMode;

  void toggleTheme(BuildContext context) {
    if (_themeMode == null) {
      if (Theme.of(context).brightness == Brightness.dark) {
        _themeMode = ThemeMode.light;
      } else {
        _themeMode = ThemeMode.dark;
      }
    } else {
      if (_themeMode == ThemeMode.dark) {
        _themeMode = ThemeMode.light;
      } else {
        _themeMode = ThemeMode.dark;
      }
    }

    notifyListeners();
  }
}
