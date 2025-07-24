import 'package:flutter/material.dart';
import 'package:ninga/core/functions/auth_functions/handle_login_background_color_gradient.dart'
    show handleAuthBackgroundColorGradient;
import 'package:ninga/generated/l10n.dart';
import 'custom_auth_title_and_appbar_section.dart';
import 'signup_complate_profile_view_section.dart';

class SignUpComplateProfileViewBody extends StatelessWidget {
  const SignUpComplateProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: handleAuthBackgroundColorGradient(context),
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            CustomAuthTitleAndAppBar(
              title: S.of(context).fillInYourBio,
              subTitle: S.of(context).accountProfileSecurityNote,
            ),
            SignUpComplateProfileViewBodySection(),
          ],
        ),
      ),
    );
  }
}
