import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';

class CustomAppTextButton extends StatelessWidget {
  const CustomAppTextButton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: (AppSize.s50 * 3).w,
        minHeight: AppSize.s56 * 1.2,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.mainColorStart, AppColors.mainColorEnd],
        ),
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.lightPrimaryColor,
        ),
        onPressed: onPressed,
        child: Text(title, style: AppTextStyles.textStyleBold16),
      ),
    );
  }
}
