import 'package:flutter/material.dart';
import 'package:jap_reading/data/themes/app_colors.dart';

class Themes {
  static ThemeData primalTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
        headline4: TextStyle(color: AppColors.darkSecondaryText),
        subtitle1: TextStyle(color: Colors.black)),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.darkPrimaryBackground,
    textTheme: const TextTheme(
        headline4: TextStyle(color: AppColors.darkSecondaryText),
        subtitle1: TextStyle(color: AppColors.darkPrimaryText)),
  );
}
