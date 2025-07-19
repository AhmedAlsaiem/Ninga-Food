import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ninga/config/routes/app_router.dart';
import 'package:ninga/core/functions/navigation/navigation.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/assets_manager.dart';
import 'package:ninga/core/widgets/custom_text_button.dart';
import 'package:ninga/features/authentication/presentation/widgets/take_photo_option.dart';
import 'package:ninga/generated/l10n.dart';

class TakePhotoOptionSection extends StatelessWidget {
  const TakePhotoOptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
      child: Column(
        children: [
          SizedBox(height: AppSize.s20.h),
          SizedBox(child: Image.asset(AssetsImage.profilePhoto)),
          SizedBox(height: AppSize.s20.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(flex: 2, child: SizedBox(height: AppSize.s10.h)),
              TakePhotoOptions(
                onTap: () {},
                imageUrl: AssetsImage.gallery,
                title: S.of(context).fromGallery,
              ),
              Expanded(flex: 1, child: SizedBox(height: AppSize.s10.h)),
              TakePhotoOptions(
                onTap: () {},
                imageUrl: AssetsImage.camera,
                title: S.of(context).takePhoto,
              ),
              Expanded(flex: 2, child: SizedBox(height: AppSize.s10.h)),
            ],
          ),
          SizedBox(height: AppSize.s50.h),
          CustomAppTextButton(
            onPressed: () {
              AppNavigation.pushWithReplacement(
                context: context,
                route: AppRoutes.loginView,
              );
            },
            title: S.of(context).next,
          ),
        ],
      ),
    );
  }
}
