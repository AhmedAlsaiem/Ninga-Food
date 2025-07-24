
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';

class LoginOptionItem extends StatelessWidget {
  const LoginOptionItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (AppSize.s48 * 3).w,
      height: AppSize.s56 * 1.3,

      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor.withValues(
          alpha: context.brightness == Brightness.light ? 1 : 0.1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s18),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).primaryColorDark,
        ),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset(image),
            SizedBox(width: AppSize.s10),
            Text(title, style: AppTextStyles.textStyleBold18),
          ],
        ),
      ),
    );
  }
}
