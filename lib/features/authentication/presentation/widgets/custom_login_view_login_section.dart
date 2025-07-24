import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/functions/text_from_field_methods/validation_password_method.dart';
import 'package:ninga/core/functions/text_from_field_methods/validiation_email_method.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_authentication_text_form_field.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_signup_option_section.dart';
import 'package:ninga/generated/l10n.dart';
import 'custom_text_button.dart';

class CustomLoginViewLoginSection extends StatelessWidget {
  CustomLoginViewLoginSection({super.key, });

  final GlobalKey<FormState> loginkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
      child: Form(
        key: loginkey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: AppSize.s20),
            CustomAuthenticationTextFromField(
              validator: validationEmailMethod(context: context),
              hintText: S.of(context).email,
              icon: AssetsIcon.emailIcon,
              onChanged: (value) {},
            ),
            SizedBox(height: AppSize.s20),
            CustomAuthenticationTextFromField(
              validator: validationPasswordMethod(context: context),
              hintText: S.of(context).password,
              icon: AssetsIcon.password,
              onChanged: (value) {},
            ),
            CustomSignUpOptionsSection(),
            CustomTextButton(
              title: S.of(context).forgotPassword,
              onPressed: () {
                AppNavigation.pushName(
                  context: context,
                  route: AppRoutes.forgetPassword,
                );
              },
            ),
            SizedBox(height: AppSize.s8),
            CustomAppTextButton(
              onPressed: () {
                if (loginkey.currentState!.validate()) {}
              },
              title: S.of(context).login,
            ),

            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
            SizedBox(height: AppSize.s50.h),
          ],
        ),
      ),
    );
  }
}
