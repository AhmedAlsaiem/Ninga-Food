

import 'package:flutter/material.dart';
import 'package:ninga/generated/l10n.dart';

String? Function(String?)? validationEmailMethod({required BuildContext context}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourEmailAddress;
    }

    // Regular expression to validate email format
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return S.of(context).Invalidemailformat;
    }

    return null; // If valid
  };
}
