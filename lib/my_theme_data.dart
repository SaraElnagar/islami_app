import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class MyThemeData {
  /// light , dark mode , colors
  static final ThemeData lightMode = ThemeData(
    // canvasColor: AppColors.primaryLightColor,
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
      // showUnselectedLabels: true,
      // backgroundColor: AppColors.primaryLightColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor),
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: AppColors.blackColor),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor),
      titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor),
    ),
  );
}
