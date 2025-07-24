
import 'package:flutter/material.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0); // رأس المثلث فوق
    path.lineTo(0, 0); // الزاوية السفلية اليسرى
    path.lineTo(size.width, size.height); // الزاوية السفلية اليمنى
    path.close(); // يغلق المسار ويرسم المثلث
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TriangleClipperLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0); // رأس المثلث فوق يسار
    path.lineTo(size.width, 0); // الزاوية العلوية اليمنى
    path.lineTo(0, size.height); // الزاوية السفلية اليسرى
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
