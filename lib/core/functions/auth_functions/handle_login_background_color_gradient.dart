import 'package:flutter/material.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';

List<Color> handleAuthBackgroundColorGradient(BuildContext context) {
  return [
    Theme.of(context).primaryColor,
    context.brightness == Brightness.light
        ? Colors.white
        : AppColors.darkPrimaryColor,
    context.brightness == Brightness.light
        ? AppColors.lightAuthBackgroundColor
        : AppColors.darkPrimaryColor,
  ];
}
