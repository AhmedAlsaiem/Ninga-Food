
import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/features/authentication/presentation/widgets/login_view_item.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_text_button.dart';

class CustomSignUpOptionsSection extends StatelessWidget {
  const CustomSignUpOptionsSection({
    super.key,
    required this.brightness,
  });

  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSize.s8),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              title: S.of(context).SignUp,
              onPressed: () {},
            ),
            Text(
              S.of(context).orContinueWith,
              style: AppTextStyles.textStyleBold16,
            ),
          ],
        ),
        SizedBox(height: AppSize.s8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginOptionItem(
              brightness: brightness,
              image: AssetsImage.facebook,
              title: S.of(context).facebook,
            ),
            SizedBox(width: AppSize.s30),
            LoginOptionItem(
              brightness: brightness,
              image: AssetsImage.google,
              title: S.of(context).google,
            ),
          ],
        ),
        SizedBox(height: AppSize.s10),
      ],
    );
  }
}
