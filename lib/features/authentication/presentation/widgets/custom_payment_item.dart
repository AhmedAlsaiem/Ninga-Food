import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ninga/core/helper/extentions.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:screenutil_module/util/config/global_imports.dart';

class CustomPaymentItem extends StatelessWidget {
  const CustomPaymentItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s80.w,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s16),
        color: Colors.white.withValues(
          alpha: context.brightness == Brightness.dark ? 0.15 : 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imageUrl,
            colorFilter:
                context.brightness == Brightness.dark
                    ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                    : null,
          ),
        ],
      ),
    );
  }
}
