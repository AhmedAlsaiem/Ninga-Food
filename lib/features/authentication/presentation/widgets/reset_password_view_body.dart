import 'package:flutter/material.dart';
import 'package:ninga/core/functions/auth_functions/handle_login_background_color_gradient.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_auth_title_and_appbar_section.dart';
import 'reset_passwrod_password_and_new_password_section.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;

    return SingleChildScrollView(
      reverse: true,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            colors: handleAuthBackgroundColorGradient(context, brightness),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomAuthTitleAndAppBar(
              title: S.of(context).resetYourPassword,
              subTitle: S.of(context).selectContactDetails,
            ),
            ResetPasswrodPasswordAndNewPasswordSection(),
          ],
        ),
      ),
    );
  }
}
