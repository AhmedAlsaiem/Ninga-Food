import 'package:flutter/material.dart';
import 'package:ninga/core/utils/styles_manager.dart';

TextTheme textTheme({required Color color}) {
  return TextTheme(
    // Light
    bodySmall: AppTextStyles.textStyleLight12.copyWith(color: color),
    labelSmall: AppTextStyles.textStyleLight13.copyWith(color: color),
    labelMedium: AppTextStyles.textStyleLight14.copyWith(color: color),

    // Regular
    labelLarge: AppTextStyles.textStyleRegular12.copyWith(color: color),
    bodyMedium: AppTextStyles.textStyleRegular14.copyWith(color: color),
    bodyLarge: AppTextStyles.textStyleRegular16.copyWith(color: color),

    // Medium
    titleSmall: AppTextStyles.textStyleMedium14.copyWith(color: color),
    titleMedium: AppTextStyles.textStyleMedium15.copyWith(color: color),
    titleLarge: AppTextStyles.textStyleMedium16.copyWith(color: color),

    // Bold
    headlineSmall: AppTextStyles.textStyleBold16.copyWith(color: color),
    headlineMedium: AppTextStyles.textStyleBold25.copyWith(color: color),
    headlineLarge: AppTextStyles.textStyleBold32.copyWith(color: color),
  );
}
