import 'package:flutter/material.dart';
import 'package:ninga/core/functions/text_theme.dart';
import 'package:ninga/core/utils/app_color.dart';

ThemeData darkTheme() {
  return ThemeData(
    cardColor: Color(0XFf252525),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          const Color.fromARGB(255, 72, 71, 71),
        ),
        iconColor: WidgetStateProperty.all(AppColors.mainColorStart),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Color.fromARGB(255, 49, 47, 47),
      prefixIconColor: Color(0XFFFFFFFF),
      hintStyle: TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
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
  );
}
