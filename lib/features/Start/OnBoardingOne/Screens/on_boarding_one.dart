import 'package:flutter/material.dart';

import '../Widgets/onboarding_content.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OnboardingContent(),
          ),
        ],
      ),
    );
  }
}
