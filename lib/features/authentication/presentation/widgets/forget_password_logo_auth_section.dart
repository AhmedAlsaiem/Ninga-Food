// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/core/functions/text_from_field_methods/validiation_email_method.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_authentication_text_form_field.dart';

class ForgetPasswordAuthSection extends StatefulWidget {
  const ForgetPasswordAuthSection({super.key});

  @override
  State<ForgetPasswordAuthSection> createState() =>
      _ForgetPasswordAuthSectionState();
}

class _ForgetPasswordAuthSectionState extends State<ForgetPasswordAuthSection>
    with WidgetsBindingObserver {
  bool isKeyboardOpen = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final value = WidgetsBinding.instance.window.viewInsets.bottom;
    setState(() {
      isKeyboardOpen = value > 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
      child: Column(
        children: [
          SizedBox(height: AppSize.s50),
          CustomAuthenticationTextFromField(
            validator: validationEmailMethod(context: context),
            icon: AssetsIcon.emailIcon,
            hintText: S.of(context).email,
            onChanged: (value) {},
          ),

          /// ✅ AnimatedContainer لمسافة سلسة عند الفتح والغلق
          SizedBox(
            height: isKeyboardOpen ? AppSize.s30.h : context.screenHeight * 0.4,
          ),

          CustomAppTextButton(title: S.of(context).submit, onPressed: () {}),
          SizedBox(height: AppSize.s8),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          SizedBox(height: AppSize.s30.h),
        ],
      ),
    );
  }
}
