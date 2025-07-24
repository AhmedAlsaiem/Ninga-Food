 import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';

OutlineInputBorder cutomOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.darkGrey.withValues(alpha: 0.0)),
      borderRadius: BorderRadius.circular(AppSize.s12),
    );
  }