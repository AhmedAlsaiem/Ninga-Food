
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;

  const AppWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final Brightness platformBrightness =
        MediaQuery.of(context).platformBrightness;

    final bool isDark = platformBrightness == Brightness.dark;
    final SystemUiOverlayStyle overlayStyle =
        isDark
            ? SystemUiOverlayStyle() 
            : SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light, 
            );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayStyle,
      child: child,
    );
  }
}
