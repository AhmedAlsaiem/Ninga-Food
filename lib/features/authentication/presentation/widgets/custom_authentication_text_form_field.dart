import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';

class CustomAuthenticationTextFromField extends StatelessWidget {
  const CustomAuthenticationTextFromField({
    super.key,
    required this.validator,
    required this.icon,
    required this.hintText,
    required this.onChanged,
  });
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String icon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;

    return TextFormField(
      onChanged: onChanged,
      style: AppTextStyles.textStyleMedium15,
      decoration: InputDecoration(
        filled: true,
        errorStyle: AppTextStyles.textStyleMedium14,
        hintText: hintText,

        prefixIcon: SvgPicture.asset(icon, height: AppSize.s22),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppSize.s30,
          horizontal: AppSize.s10,
        ),
        focusColor: Theme.of(context).colorScheme.inversePrimary,
        fillColor: AppColors.lightPrimaryColor.withValues(
          alpha: brightness == Brightness.light ? 1 : 0.1,
        ),
        border: cutomOutlineInputBorder(),
        errorBorder: cutomOutlineInputBorder(),
        enabledBorder: cutomOutlineInputBorder(),
        focusedBorder: cutomOutlineInputBorder(),
        disabledBorder: cutomOutlineInputBorder(),
      ),

      validator: validator,
    );
  }

  OutlineInputBorder cutomOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.darkGrey.withValues(alpha: 0.2)),
      borderRadius: BorderRadius.circular(AppSize.s22),
    );
  }
}
