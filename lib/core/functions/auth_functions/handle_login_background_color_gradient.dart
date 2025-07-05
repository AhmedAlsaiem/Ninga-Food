import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';

List<Color> handleAuthBackgroundColorGradient(
  BuildContext context,
  Brightness brightness,
) {
  return [
    Theme.of(context).primaryColor,
    brightness == Brightness.light
        ? AppColors.lightAuthBackgroundColor
        : AppColors.darkPrimaryColor,
    brightness == Brightness.light
        ? AppColors.lightAuthBackgroundColor
        : AppColors.darkPrimaryColor,
  ];
}
