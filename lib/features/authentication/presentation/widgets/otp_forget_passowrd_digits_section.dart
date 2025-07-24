import 'package:flutter/material.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/features/authentication/presentation/widgets/otp_verification_text_form.dart';
import 'package:ninga/generated/l10n.dart';

class OtpForgetPasswordDigitsSection extends StatefulWidget {
  const OtpForgetPasswordDigitsSection({super.key});

  @override
  OtpForgetPasswordDigitsSectionState createState() =>
      OtpForgetPasswordDigitsSectionState();
}

class OtpForgetPasswordDigitsSectionState
    extends State<OtpForgetPasswordDigitsSection> {
  late List<FocusNode> focusNodes;
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    focusNodes = List.generate(4, (_) => FocusNode());
    controllers = List.generate(4, (_) => TextEditingController());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(focusNodes[0]);
    });
  }

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  String getOtpCode() {
    String otp = '';
    for (var controller in controllers) {
      otp += controller.text;
    }
    return otp;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OtpVerificationTextFromFields(
          controllers: controllers,
          focusNodes: focusNodes,
        ),
        SizedBox(height: context.screenHeight * 0.4),
        CustomAppTextButton(
          title: S.of(context).next,
          onPressed: () {
            String otpCode = getOtpCode();
            print('OTP entered: $otpCode');
            AppNavigation.pushName(
              
              context: context,
              route: AppRoutes.restPasswordView,
            );
          },
        ),
      ],
    );
  }
}
