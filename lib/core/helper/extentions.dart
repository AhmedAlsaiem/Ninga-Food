import 'package:flutter/material.dart';
extension ScreenSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get viewInsetsBottom => MediaQuery.of(this).viewInsets.bottom;
  Brightness get brightness => MediaQuery.of(this).platformBrightness;
}

class User {
  late String name;
}

