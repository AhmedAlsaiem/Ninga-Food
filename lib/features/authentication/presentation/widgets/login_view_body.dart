import 'package:flutter/material.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_logo_auth.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomLogoAuthSection(),
        ],
      ),
    );
  }
}
