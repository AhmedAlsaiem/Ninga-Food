import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/generated/l10n.dart';

class CustomAuthenticationTextFromField extends StatefulWidget {
  const CustomAuthenticationTextFromField({
    super.key,
    required this.validator,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    this.obsecureText = false,
    this.textInputType = TextInputType.text,
  });
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String icon;
  final String hintText;
  final bool obsecureText;
  final TextInputType textInputType;
  @override
  State<CustomAuthenticationTextFromField> createState() =>
      _CustomAuthenticationTextFromFieldState();
}

class _CustomAuthenticationTextFromFieldState
    extends State<CustomAuthenticationTextFromField> {
  String secureIcon = AssetsIcon.secure2;
  bool secureText = true;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return TextFormField(
      cursorColor: AppColors.mainColorStart,
      keyboardType: widget.textInputType,
      onChanged: widget.onChanged,
      obscureText:
          handleSecurePassword(hitText: widget.hintText, context: context)
              ? secureText
              : false,
      style: AppTextStyles.textStyleMedium15,
      decoration: InputDecoration(
        filled: true,
        errorStyle: AppTextStyles.textStyleMedium14,
        hintText: widget.hintText,
        suffixIcon:
            handleSecurePassword(hitText: widget.hintText, context: context)
                ? GestureDetector(
                  onTap: () {
                    if (secureIcon == AssetsIcon.secure2) {
                      secureText = false;
                      secureIcon = AssetsIcon.secure3;
                      setState(() {});
                    } else {
                      secureText = true;
                      secureIcon = AssetsIcon.secure2;
                      setState(() {});
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(AppSize.s12),
                    child: SvgPicture.asset(
                      secureIcon,
                      height: AppSize.s10,
                      width: AppSize.s10,
                    ),
                  ),
                )
                : null,
        prefixIcon: Padding(
          padding: EdgeInsets.all(AppSize.s8),
          child: SvgPicture.asset(
            widget.icon,
            height: AppSize.s10,
            width: AppSize.s10,
          ),
        ),

        contentPadding: EdgeInsets.symmetric(
          vertical: AppSize.s24,
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

      validator: widget.validator,
    );
  }

  OutlineInputBorder cutomOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.darkGrey.withValues(alpha: 0.2)),
      borderRadius: BorderRadius.circular(AppSize.s22),
    );
  }
}

bool handleSecurePassword({
  required String hitText,
  required BuildContext context,
}) {
  if ((hitText == S.of(context).password) |
      (hitText == S.of(context).newPassword)) {
    return true;
  } else {
    return false;
  }
}
