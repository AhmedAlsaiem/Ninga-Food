import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import '../../../../core/utils/assets_manager.dart';
import 'triangleClipper.dart';

class CustomAuthTitleAndAppBar extends StatelessWidget {
  const CustomAuthTitleAndAppBar({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          SizedBox(width: double.infinity),
          ClipPath(
            clipper: TriangleClipper(),
            child: SizedBox(
              width: context.screenWidth * 0.85,
              height: context.screenHeight * 0.25,
              child: SvgPicture.asset(
                AssetsImage.authintactionBackground,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(AppSize.s12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(AppSize.s50, AppSize.s50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s12),
                      ),
                      backgroundColor: AppColors.sandyOrange.withValues(
                        alpha: 0.15,
                      ),
                    ),
                    highlightColor: AppColors.sandyOrange.withValues(
                      alpha: 0.1,
                    ),
                    onPressed: () {
                      AppNavigation.pop(context: context);
                    },
                    icon: SvgPicture.asset(
                      AssetsIcon.arrowBackIcon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: AppSize.s20),
                Text(title, style: AppTextStyles.textStyleBold25),
                SizedBox(height: AppSize.s30),
                SizedBox(
                  width: context.screenWidth * 0.8,
                  child: Text(subTitle, style: AppTextStyles.textStyleLight12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
