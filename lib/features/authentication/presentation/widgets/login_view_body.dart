import 'package:flutter/material.dart';
import 'package:ninga/core/functions/auth_functions/handle_login_background_color_gradient.dart';
import 'package:ninga/features/authentication/presentation/widgets/custom_logo_auth.dart';
import 'custom_login_view_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: handleAuthBackgroundColorGradient(context, brightness),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          
          reverse: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomLogoAuthSection(),
              CustomLoginViewLoginSection(brightness: brightness),
            ],
          ),
        ),
      ),
    );
  }
}
