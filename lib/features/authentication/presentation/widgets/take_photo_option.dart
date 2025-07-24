
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';
import 'package:screenutil_module/util/config/global_imports.dart';

class TakePhotoOptions extends StatelessWidget {
  const TakePhotoOptions({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });
  final String imageUrl;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withAlpha(50),
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
          height: AppSize.s80.h + 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imageUrl, fit: BoxFit.none),
              SizedBox(height: AppSize.s4),
              Text(title, style: AppTextStyles.textStyleBold12),
            ],
          ),
        ),
      ),
    );
  }
}
