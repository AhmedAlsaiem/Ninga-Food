import 'package:flutter/material.dart';
import 'package:ninga/generated/l10n.dart';

String? Function(String?)? validationPhoneNumberMethod({
  required BuildContext context,
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseEnterYourPhoneNumber;
    }

    final regex = RegExp(r'^(010|011|012|015)[0-9]{8}$');

    if (!regex.hasMatch(value)) {
      return S.of(context).InvalidPhoneNumber;
    }

    return null;
  };
}
