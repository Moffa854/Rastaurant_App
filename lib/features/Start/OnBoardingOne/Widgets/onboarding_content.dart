import 'package:flutter/material.dart';

import 'bottom_section.dart';
import 'logo_section.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LogoSection(),
        BottomSection(),
      ],
    );
  }
}
