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
      width: (AppSize.s48 * 3).w,
      height: AppSize.s56,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.mainColorStart, AppColors.mainColorEnd],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.lightPrimaryColor,
        ),
        onPressed: onPressed,
        child: Text(title, style: AppTextStyles.textStyleBold18),
      ),
    );
  }
}
