import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/styles_manager.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: <Color>[AppColors.mainColorStart, AppColors.mainColorEnd],
          ).createShader(bounds);
        },
        child: Text(
          title,
          style: AppTextStyles.textStyleMedium15.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ),
    );
  }
}
