import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/generated/l10n.dart';

class OnboardingViewbody extends StatelessWidget {
  const OnboardingViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      controllerColor: AppColors.mainColorEnd,
      headerBackgroundColor: Theme.of(context).colorScheme.primary,
      finishButtonText: 'Register',
      finishButtonStyle: FinishButtonStyle(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        hoverColor: AppColors.mainColorEnd,
        splashColor: AppColors.mainColorEnd,
        backgroundColor: AppColors.mainColorEnd,
      ),
      skipTextButton: Text(
        'Skip',
        style: AppTextStyles.textStyleLight14.copyWith(
          color: AppColors.mainColorEnd,
        ),
      ),
      trailingFunction: () {
        AppNavigation.pushWithReplacement(
          context: context,
          route: AppRoutes.loginView,
        );
      },
      trailing: Text(
        'Login',
        style: AppTextStyles.textStyleRegular12.copyWith(
          color: AppColors.mainColorEnd,
        ),
      ),
      centerBackground: true,
      background: [
        SvgPicture.asset(AssetsImage.onboarding1),
        SvgPicture.asset(AssetsImage.onboarding2),
      ],
      totalPage: 2,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(height: 440),
              SizedBox(
                width: context.screenWidth * 0.7,
                child: Text(
                  textAlign: TextAlign.center,
                  S.of(context).findyourComfortFoodhere,
                  style: AppTextStyles.textStyleBold22,
                ),
              ),
              SizedBox(height: 10),

              SizedBox(
                width: context.screenWidth * 0.7,
                child: Text(
                  textAlign: TextAlign.center,
                  S.of(context).hereYouCanfindachefordishforeverytaste,
                  style: AppTextStyles.textStyleLight12,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(height: 440),
              SizedBox(
                width: context.screenWidth * 0.75,
                child: Text(
                  textAlign: TextAlign.center,
                  S.of(context).foodNinjaisWhere,
                  style: AppTextStyles.textStyleBold22,
                ),
              ),
              SizedBox(height: 10),

              SizedBox(
                width: context.screenWidth * 0.75,
                child: Text(
                  textAlign: TextAlign.center,
                  S.of(context).enjoyFastAndSmoth,
                  style: AppTextStyles.textStyleLight12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
