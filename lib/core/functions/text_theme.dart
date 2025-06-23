import 'package:flutter/material.dart';
import 'package:ninga/core/utils/styles_manager.dart';

TextTheme textTheme({required Color color}) {
  return TextTheme(
    // Light
    bodySmall: AppTextStylesLight.textStyleLight12.copyWith(color: color),
    labelSmall: AppTextStylesLight.textStyleLight13.copyWith(color: color),
    labelMedium: AppTextStylesLight.textStyleLight14.copyWith(color: color),

    // Regular
    labelLarge: AppTextStylesLight.textStyleRegular12.copyWith(color: color),
    bodyMedium: AppTextStylesLight.textStyleRegular14.copyWith(color: color),
    bodyLarge: AppTextStylesLight.textStyleRegular16.copyWith(color: color),

    // Medium
    titleSmall: AppTextStylesLight.textStyleMedium14.copyWith(color: color),
    titleMedium: AppTextStylesLight.textStyleMedium15.copyWith(color: color),
    titleLarge: AppTextStylesLight.textStyleMedium16.copyWith(color: color),

    // Bold
    headlineSmall: AppTextStylesLight.textStyleBold16.copyWith(color: color),
    headlineMedium: AppTextStylesLight.textStyleBold25.copyWith(color: color),
    headlineLarge: AppTextStylesLight.textStyleBold32.copyWith(color: color),
  );
}
