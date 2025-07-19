import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/auth_functions/handle_login_background_color_gradient.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_auth_title_and_appbar_section.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_payment_item.dart';
import 'package:ninga/generated/l10n.dart';

class ComplateProfilePaymentMethodsBody extends StatelessWidget {
  const ComplateProfilePaymentMethodsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthTitleAndAppBar(
          title: S.of(context).paymentMethod,
          subTitle: S.of(context).accountProfileSecurityNote,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: handleAuthBackgroundColorGradient(context),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s12),
            child: Column(
              children: [
                SizedBox(height: AppSize.s20),
                CustomPaymentItem(imageUrl: AssetsImage.paypal),
                SizedBox(height: AppSize.s20),
                CustomPaymentItem(imageUrl: AssetsImage.visa),
                SizedBox(height: AppSize.s20),
                CustomPaymentItem(imageUrl: AssetsImage.payoneer),
                SizedBox(height: AppSize.s20),
                SizedBox(height: context.screenHeight * 0.17),
                CustomAppTextButton(
                  onPressed: () {
                    AppNavigation.pushName(
                      context: context,
                      route: AppRoutes.addProfileImageView,
                    );
                  },
                  title: S.of(context).next,
                ),
                SizedBox(height: AppSize.s24.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
