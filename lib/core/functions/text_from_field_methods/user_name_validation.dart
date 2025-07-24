import 'package:flutter/material.dart';
import 'package:ninga/generated/l10n.dart';

String? Function(String?) validationUsernameMethod({
  required BuildContext context,
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourUsername;
    }

    if (value.length < 3) {
      return S.of(context).usernameMustBeAtLeast3Characters;
    }

    final usernameRegExp = RegExp(r'^[a-zA-Z0-9_]+$');
    if (!usernameRegExp.hasMatch(value)) {
      return S.of(context).usernameCanOnlyContainLettersAndNumbers;
    }

    return null;
  };
}
