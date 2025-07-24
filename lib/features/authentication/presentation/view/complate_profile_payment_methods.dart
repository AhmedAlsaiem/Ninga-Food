import 'package:flutter/material.dart';
import 'package:ninga/features/authentication/presentation/widgets/complate_profile_payment_methods_body.dart';

class ComplateProfilePaymentMethods extends StatelessWidget {
  const ComplateProfilePaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ComplateProfilePaymentMethodsBody(),
    );
  }
}