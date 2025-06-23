import 'package:flutter/material.dart';
import 'package:ninga/core/functions/text_theme.dart';
import 'package:ninga/core/utils/color_manager.dart';

ThemeData darkTheme() {
  return ThemeData(
    textTheme: textTheme(color: AppColors.lightPrimaryColor),

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
