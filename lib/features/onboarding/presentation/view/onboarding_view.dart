import 'package:flutter/material.dart';
import 'package:ninga/features/onboarding/presentation/widget/onboarding_viewbody.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnboardingViewbody());
  }
}
