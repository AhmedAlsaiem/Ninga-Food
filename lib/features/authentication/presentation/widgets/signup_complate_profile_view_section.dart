
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/functions/text_from_field_methods/user_name_validation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_authentication_text_form_field.dart';

class SignUpComplateProfileViewBodySection extends StatefulWidget {
  const SignUpComplateProfileViewBodySection({super.key});

  @override
  State<SignUpComplateProfileViewBodySection> createState() =>
      _SignUpComplateProfileViewBodySectionState();
}

class _SignUpComplateProfileViewBodySectionState
    extends State<SignUpComplateProfileViewBodySection>
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

  GlobalKey<FormState> globakForgetPasswordFrom = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globakForgetPasswordFrom,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
        child: Column(
          children: [
            SizedBox(height: AppSize.s50),
            CustomAuthenticationTextFromField(
              validator: validationUsernameMethod(context: context),
              icon: AssetsIcon.userName1,
              hintText: S.of(context).firstName,
              onChanged: (value) {},
            ),
            SizedBox(height: AppSize.s16),
            CustomAuthenticationTextFromField(
              validator: validationUsernameMethod(context: context),
              icon: AssetsIcon.userName1,
              hintText: S.of(context).lastName,
              onChanged: (value) {},
            ),

            SizedBox(
              height:
                  isKeyboardOpen ? AppSize.s30.h : context.screenHeight * 0.3,
            ),

            CustomAppTextButton(
              title: S.of(context).next,
              onPressed: () {
                if (globakForgetPasswordFrom.currentState!.validate()) {}
                AppNavigation.pushName(
                  context: context,
                  argument: S.of(context).yourProfileIsReadyToUse,
                  route: AppRoutes.sucessRestPassowrdView,
                );
              },
            ),
            SizedBox(height: AppSize.s8),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            SizedBox(height: AppSize.s8.h),
          ],
        ),
      ),
    );
  }
}
