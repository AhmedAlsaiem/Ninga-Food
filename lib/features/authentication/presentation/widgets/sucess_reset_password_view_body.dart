import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/generated/l10n.dart';

class SucessResetPasswordViewBody extends StatelessWidget {
  const SucessResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            child: SvgPicture.asset(
              AssetsImage.authintactionBackground,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: double.infinity),
              Image.asset(AssetsImage.suceessImage),
              SizedBox(height: AppSize.s20),
              ShaderMask(
                shaderCallback:
                    (bounds) => LinearGradient(
                      colors: [
                        AppColors.mainColorStart,
                        AppColors.mainColorEnd,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                child: Text(
                  S.of(context).congrats,
                  style: AppTextStyles.textStyleBold30.copyWith(
                    color: AppColors.white2,
                  ),
                ),
              ),
              SizedBox(height: AppSize.s20),
              Text(args, style: AppTextStyles.textStyleBold23),
              SizedBox(height: context.screenHeight * 0.23),
              CustomAppTextButton(
                onPressed: () {
                  AppNavigation.pushWithReplacement(
                    context: context,
                    rootNavigator: true,
                    route: AppRoutes.loginView,
                  );
                },
                title: S.of(context).back,
              ),
              SizedBox(height: AppSize.s50),
            ],
          ),
        ],
      ),
    );
  }
}
