import 'package:flutter/material.dart';
import 'package:ninga/generated/l10n.dart';

String? Function(String?)? validationPasswordMethod({
  required BuildContext context,
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourPassword;
    }

    if (value.length < 6) {
      return S.of(context).passwordMustBeAtLeast6Characters;
    }

    return null;
  };
}
