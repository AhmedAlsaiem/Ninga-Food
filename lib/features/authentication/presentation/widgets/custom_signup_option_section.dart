import 'package:flutter/material.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/features/authentication/presentation/widgets/login_view_item.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_text_button.dart';

class CustomSignUpOptionsSection extends StatelessWidget {
  const CustomSignUpOptionsSection({super.key, });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSize.s2),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              title: S.of(context).SignUp,
              onPressed: () {
                AppNavigation.pushName(
                  context: context,
                  route: AppRoutes.signUpView,
                );
              },
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
              image: AssetsImage.facebook,
              title: S.of(context).facebook,
            ),
            SizedBox(width: AppSize.s30),
            LoginOptionItem(
              image: AssetsImage.google,
              title: S.of(context).google,
            ),
          ],
        ),
      ],
    );
  }
}
