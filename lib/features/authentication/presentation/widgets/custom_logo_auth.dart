import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:ninga/generated/l10n.dart';

class CustomLogoAuthSection extends StatelessWidget {
  const CustomLogoAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: context.screenHeight * 0.38,
          width: double.infinity,
          child: SvgPicture.asset(
            AssetsImage.authintactionBackground,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            Image.asset(
              AssetsImage.logo,
              height: AppSize.s160.h,
              width: AppSize.s180,
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: <Color>[
                    AppColors.mainColorStart,
                    AppColors.mainColorEnd,
                  ],
                ).createShader(bounds);
              },
              child: Text(
                S.of(context).appName,
                style: AppTextStyles.textStyleBold40.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
            ),
            Text(
              S.of(context).deliverFavoriteFood,
              style: AppTextStyles.textStyleMedium14,
            ),
          ],
        ),
      ],
    );
  }
}
