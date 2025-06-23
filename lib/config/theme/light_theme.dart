import 'package:flutter/material.dart';
import 'package:ninga/core/functions/text_theme.dart';
import 'package:ninga/core/utils/color_manager.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'OpenSans',

    textTheme: textTheme(color: AppColors.balck),
    brightness: Brightness.light,
    primaryColorDark: AppColors.darkPrimaryColor,
    primaryColor: AppColors.lightPrimaryColor,
    scaffoldBackgroundColor: AppColors.lightPrimaryColor,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: AppColors.darkPrimaryColor),
      backgroundColor: AppColors.lightPrimaryColor,
      foregroundColor: AppColors.lightPrimaryColor,
    ),
  );
}
