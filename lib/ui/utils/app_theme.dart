import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme{
  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.lightBlack
  );
  static const TextStyle mediumTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.lightBlack
  );
  static const TextStyle regularTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: AppColors.lightBlack,
  );

  static TextStyle darkAppBarTextStyle = appBarTextStyle.copyWith(color: AppColors.white);
  static TextStyle darkMediumTitleTextStyle = mediumTitleTextStyle.copyWith(color: AppColors.white);
  static TextStyle darkRegularTitleTextStyle = regularTitleTextStyle.copyWith(color: AppColors.white);

  static ThemeData lightTheme = ThemeData(
     primaryColor: AppColors.lightPrimary,
     scaffoldBackgroundColor: AppColors.transparent,
     appBarTheme: const AppBarTheme(
       centerTitle: true,
       elevation: 0,
       backgroundColor: AppColors.transparent,
       titleTextStyle: appBarTextStyle
     ),
    colorScheme: const ColorScheme(brightness: Brightness.light,
        primary: AppColors.lightPrimary,
        onPrimary: AppColors.lightPrimary,
        secondary: AppColors.lightBlack,
        onSecondary: AppColors.lightBlack,
        error: Colors.red,
        onError: Colors.red,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.lightBlack,
      unselectedItemColor: AppColors.white,
      selectedIconTheme: IconThemeData(size: 36),
      unselectedIconTheme: IconThemeData(size: 34),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.darkPrimary,
    scaffoldBackgroundColor: AppColors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.transparent,
        titleTextStyle: appBarTextStyle.copyWith(color: AppColors.white)
    ),
    colorScheme: const ColorScheme(brightness: Brightness.dark,
        primary: AppColors.darkPrimary,
        onPrimary: AppColors.darkPrimary,
        secondary: AppColors.yellow,
        onSecondary: AppColors.yellow,
        error: Colors.red,
        onError: Colors.red,
        background: AppColors.transparent,
        onBackground: AppColors.transparent,
        surface: AppColors.transparent,
        onSurface: AppColors.transparent),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.yellow,
      unselectedItemColor: AppColors.white,
      selectedIconTheme: IconThemeData(size: 36),
      unselectedIconTheme: IconThemeData(size: 34),
    ),
  );
}