import 'package:flutter/material.dart';
import 'package:ninga/app.dart';
import 'package:ninga/core/functions/transitions/page_route_builder_method.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingView:
        return pageRouteBuilderMethod(
          pageBuilder:
              (context, animation, secondaryAnimation) => const Ninga(),
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
