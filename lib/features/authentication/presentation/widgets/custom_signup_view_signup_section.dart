import 'package:flutter/material.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/functions/text_from_field_methods/phone_number_validataion.dart';
import 'package:ninga/core/functions/text_from_field_methods/validation_password_method.dart';
import 'package:ninga/core/functions/text_from_field_methods/validiation_email_method.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_authentication_text_form_field.dart';
import 'package:ninga/features/authentication/presentation/widgets/security_options_for_keyp_my_sign_in.dart';
import 'package:ninga/generated/l10n.dart';
import 'custom_text_button.dart';

class CustomSignupViewSignupSection extends StatelessWidget {
  CustomSignupViewSignupSection({super.key});

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
            SizedBox(height: AppSize.s12),
            CustomAuthenticationTextFromField(
              textInputType: TextInputType.number,
              validator: validationPhoneNumberMethod(context: context),
              hintText: S.of(context).phoneNumber,
              icon: AssetsIcon.userName1,
              onChanged: (value) {},
            ),
            SizedBox(height: AppSize.s12),
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
            SecurityOptionsForKeypMySignIn(title: S.of(context).keepMeSignedIn),
            SecurityOptionsForKeypMySignIn(
              title: S.of(context).emailMeAboutSpecialPricing,
            ),
            SizedBox(width: AppSize.s20),

            CustomAppTextButton(
              onPressed: () {
                if (loginkey.currentState!.validate()) {}
              },
              title: S.of(context).createAccount,
            ),
            CustomTextButton(
              title: S.of(context).loginToYourAccount,
              onPressed: () {
                AppNavigation.pushName(
                  context: context,
                  route: AppRoutes.loginView,
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
    );
  }
}
