import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/generated/l10n.dart';

import '../../../../core/widgets/custom_text_button.dart';

class SetUserLocation extends StatelessWidget {
  const SetUserLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: AppSize.s12),
          padding: EdgeInsets.all(AppSize.s12),

          height: AppSize.s130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s8),
            color: AppColors.balck2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsIcon.location1),
                  SizedBox(width: AppSize.s8),
                  Text(
                    S.of(context).yourLocation,
                    style: AppTextStyles.textStyleMedium14,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s100),
                  backgroundColor: AppColors.darkGrey,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s8),
                  ),
                ),
                child: Text(S.of(context).setLocation),
              ),
            ],
          ),
        ),
        SizedBox(height: context.screenHeight * 0.4),
        CustomAppTextButton(
          onPressed: () {
            AppNavigation.pushName(
              context: context,
              argument: S.of(context).yourAcountIsCreated,
              route: AppRoutes.sucessRestPassowrdView,
            );
          },
          title: S.of(context).next,
        ),
      ],
    );
  }
}
