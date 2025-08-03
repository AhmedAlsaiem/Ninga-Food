import 'package:flutter/material.dart';
import 'package:ninga/core/functions/text_theme.dart';
import 'package:ninga/core/utils/app_color.dart';

ThemeData darkTheme() {
  return ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    
  ),
    fontFamily: 'OpenSans',
    textTheme: textTheme(color: AppColors.lightPrimaryColor),
    primaryColorDark: AppColors.lightPrimaryColor,
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimaryColor,
    scaffoldBackgroundColor: AppColors.darkPrimaryColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: AppColors.lightPrimaryColor),
      backgroundColor: AppColors.darkPrimaryColor,
      foregroundColor: AppColors.darkPrimaryColor,
    ),
    textButtonTheme: TextButtonThemeData(style: ButtonStyle()),
  
  );
}
