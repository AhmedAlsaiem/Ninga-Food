import 'package:flutter/material.dart';
import 'package:ninga/core/functions/text_theme.dart';
import 'package:ninga/core/utils/app_color.dart';

ThemeData lightTheme() {
  return ThemeData(
    cardColor: Color.fromARGB(255, 255, 255, 255),
    fontFamily: 'OpenSans',
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.white),
        iconColor: WidgetStateProperty.all(AppColors.mainColorStart),
      ),
    ),
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
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Color(0XFFFEAD1D).withOpacity(0.07),
      prefixIconColor: const Color(0xFFDA6317).withOpacity(0.8),
      hintStyle: TextStyle(
        color: Color(0XFFDA6317).withOpacity(0.4),
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
