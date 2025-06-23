import 'package:flutter/material.dart';
import 'package:ninga/core/functions/transitions/page_route_builder_method.dart';
import 'package:ninga/features/onboarding/presentation/view/onboarding_view.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingView:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) => const OnboardingView(),
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
}
