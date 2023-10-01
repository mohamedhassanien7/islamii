import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//observable object
//subject
//provider
class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = "en";

  void changeTheme(ThemeMode newTheme) async {
    final prefs = await SharedPreferences.getInstance();
    if (newTheme == currentTheme) {
      return;
    }
    currentTheme = newTheme;
    prefs.setString(
        'Theme', currentTheme == ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    prefs.setString('lang', currentLocale);
    notifyListeners();
  }
}
