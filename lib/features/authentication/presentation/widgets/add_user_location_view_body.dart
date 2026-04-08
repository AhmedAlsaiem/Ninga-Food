import 'package:flutter/material.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_auth_title_and_appbar_section.dart';
import 'package:ninga/generated/l10n.dart';
import 'set_location_section.dart';

class AddUserLocationViewBody extends StatelessWidget {
  const AddUserLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAuthTitleAndAppBar(
          title: S.of(context).setYourCurrentLocation,
          subTitle: S.of(context).setYourCurrentLocationSubTitle,
        ),
        SetUserLocation(),
      ],
    );
  }
}
