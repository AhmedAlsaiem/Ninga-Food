import 'package:flutter/material.dart';
import 'package:ninga/core/utils/app_color.dart';
import 'package:ninga/core/utils/app_size.dart';
import 'package:ninga/features/authentication/presentation/widgets/outline_input_border.dart';

class OtpVerificationTextFromFields extends StatelessWidget {
  const OtpVerificationTextFromFields({
    super.key,
    required this.controllers,
    required this.focusNodes,
  });

  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;
  @override
  Widget build(BuildContext context) {
    bool darkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? true
            : false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          width: 60,
          height: 70,
          margin: EdgeInsets.symmetric(horizontal: AppSize.s8),
          child: TextField(
            controller: controllers[index],
            focusNode: focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,

            cursorColor: AppColors.mainColorEnd,
            decoration: InputDecoration(
              counterText: '',
              fillColor: AppColors.darkGrey.withValues(
                alpha: darkMode ? 0.4 : 0.1,
              ),
              filled: true,
              enabledBorder: cutomOutlineInputBorder(),
              focusedBorder: cutomOutlineInputBorder(),
              border: cutomOutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < controllers.length - 1) {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                } else {
                  // إذا كان آخر خانة ➔ أغلق الكيبورد
                  FocusScope.of(context).unfocus();
                }
              }
              if (value.isEmpty && index > 0) {
                FocusScope.of(context).requestFocus(focusNodes[index - 1]);
              }
            },
          ),
        );
      }),
    );
  }

 
}
