import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  AppConfigProvider() {
    loadPreferences();
  }

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
    savePreferences();
  }

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
    savePreferences();
  }

  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    appLanguage = prefs.getString('appLanguage') ?? "en";
    appTheme = (prefs.getString("appTheme") ?? "light") == "light"
        ? ThemeMode.light
        : ThemeMode.dark;
    notifyListeners();
  }

  Future<void> savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("appLanguage", appLanguage);
    prefs.setString("appTheme", appTheme == ThemeMode.light ? "light" : "dark");
  }
}
