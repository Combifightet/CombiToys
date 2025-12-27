import 'package:flutter/material.dart';


class GlobalSettingsModel extends ChangeNotifier {
  Locale? _locale;
  ThemeMode _theme = ThemeMode.system;
  String _accentColor = 'purple';

  Locale? get locale => _locale;
  void setLocale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }

  ThemeMode get theme => _theme;
  void setTheme(ThemeMode theme) {
    _theme = theme;
    notifyListeners();
  }

  String get accentColor => _accentColor;
  void setAccentColor(String accentColor) {
    _accentColor = accentColor;
    notifyListeners();
  }
}
