import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_auth_title_and_appbar_section.dart';
import 'package:ninga/features/authentication/presentation/widgets/otp_forget_passowrd_digits_section.dart';
import 'package:ninga/generated/l10n.dart';

class ForgetPasswordVerificationBody extends StatelessWidget {
  const ForgetPasswordVerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAuthTitleAndAppBar(
            title: S.of(context).enter4DigitCode,
            subTitle: S.of(context).codeSentNote,
          ),
          SizedBox(height: AppSize.s20),
          OtpForgetPasswordDigitsSection(),
        ],
      ),
    );
  }
}
