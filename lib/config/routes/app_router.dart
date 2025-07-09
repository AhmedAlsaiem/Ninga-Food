import 'package:flutter/material.dart';
import 'package:ninga/core/functions/transitions/page_route_builder_method.dart';
import 'package:ninga/features/authentication/presentation/view/forget_password_view.dart';
import 'package:ninga/features/authentication/presentation/view/login_view.dart';
import 'package:ninga/features/authentication/presentation/view/sign_up_view.dart';
import 'package:ninga/features/authentication/presentation/view/foget_password_verification.dart';
import 'package:ninga/features/onboarding/presentation/view/onboarding_view.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingView:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) =>
                  const OnboardingView(),
        );
      case AppRoutes.loginView:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) => const LoginView(),
        );
      case AppRoutes.signUpView:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) => const SignUpView(),
        );
      case AppRoutes.forgetPassword:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) =>
                  const ForgetPasswordView(),
        );
      case AppRoutes.home:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) =>
                  const ForgetPasswordView(),
        );
      case AppRoutes.forgetPasswordVerification:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) =>
                  const ForgetPasswordVerification(),
        );

      default:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) => const Scaffold(),
        );
    }
  }
}

abstract class AppRoutes {
  static const String onboardingView = '/';
  static const String loginView = '/loginView';
  static const String forgetPassword = '/forgetPassword';
  static const String signUpView = '/signUpView';
  static const String home = '/home';
  static const String forgetPasswordVerification = '/forgetPasswordVerification';
}
