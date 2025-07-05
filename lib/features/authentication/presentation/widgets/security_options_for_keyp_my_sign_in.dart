import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/core/utils/styles_manager.dart';

class SecurityOptionsForKeypMySignIn extends StatefulWidget {
  const SecurityOptionsForKeypMySignIn({super.key, required this.title});
  final String title;
  @override
  State<SecurityOptionsForKeypMySignIn> createState() =>
      _SecurityOptionsForKeypMySignInState();
}

class _SecurityOptionsForKeypMySignInState
    extends State<SecurityOptionsForKeypMySignIn> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            if (isTrue == true) {
              isTrue = false;
            } else {
              isTrue = true;
            }
            setState(() {});
          },
          child: CircleAvatar(
            radius: AppSize.s16,
            backgroundColor:
                isTrue ? AppColors.mainColorEnd : AppColors.darkGrey,
            child: Icon(
              Icons.check,
              size: AppSize.s20,
              weight: AppSize.s12,
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ),
        SizedBox(width: AppSize.s12),
        Text(
          widget.title,
          style: AppTextStyles.textStyleRegular12.copyWith(
            color: Theme.of(context).primaryColorDark.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
