import 'package:flutter/material.dart';
import 'package:ninga/core/functions/auth_functions/handle_login_background_color_gradient.dart';
import 'package:ninga/features/authentication/presentation/widgets/forget_password_email_verification_auth_section.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_auth_title_and_appbar_section.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      reverse: true,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            colors: handleAuthBackgroundColorGradient(context),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomAuthTitleAndAppBar(
              title: S.of(context).forgotPassword,
              subTitle: S.of(context).selectContactDetails,
            ),
            ForgetPasswordEmailVerificationAuthSection(),
          ],
        ),
      ),
    );
  }
}
