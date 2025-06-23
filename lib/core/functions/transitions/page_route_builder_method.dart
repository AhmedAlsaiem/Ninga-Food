import 'package:flutter/material.dart';
import 'package:ninga/core/functions/transitions/slide_transation_builder.dart';


PageRouteBuilder<dynamic> pageRouteBuilderMethod(
      {required Widget Function(
              BuildContext, Animation<double>, Animation<double>)
          pageBuilder}) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: slideTransitionBuilder,
      pageBuilder: pageBuilder,
    );
  }