import 'package:flutter/material.dart';
import 'package:isalmi_mon_c10/ui/utils/app_theme.dart';

import '../utils/app_assets.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentThemeMode = ThemeMode.light;

  toggleTheme(bool newValue) {
    currentThemeMode = newValue ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  String get defaultBackground => currentThemeMode == ThemeMode.dark
      ? AppAssets.darkBackground
      : AppAssets.background;

  TextStyle get appBarTextStyle => currentThemeMode == ThemeMode.dark
      ? AppTheme.darkAppBarTextStyle
      : AppTheme.appBarTextStyle;

  TextStyle get mediumTitleTextStyle => currentThemeMode == ThemeMode.dark
      ? AppTheme.darkMediumTitleTextStyle
      : AppTheme.mediumTitleTextStyle;

  TextStyle get regularTitleTextStyle => currentThemeMode == ThemeMode.dark
      ? AppTheme.darkRegularTitleTextStyle
      : AppTheme.regularTitleTextStyle;
}
