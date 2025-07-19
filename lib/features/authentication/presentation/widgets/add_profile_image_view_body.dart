import 'package:flutter/material.dart';
import 'package:ninga/features/authentication/presentation/widgets/take_photo_option_section.dart';
import 'package:ninga/generated/l10n.dart';

import 'custom_auth_title_and_appbar_section.dart';

class AddProfileImageViewBody extends StatelessWidget {
  const AddProfileImageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAuthTitleAndAppBar(
          title: S.of(context).uploadYourPhoto,
          subTitle: S.of(context).accountProfileSecurityNote,
        ),
        TakePhotoOptionSection(),
      ],
    );
  }
}
