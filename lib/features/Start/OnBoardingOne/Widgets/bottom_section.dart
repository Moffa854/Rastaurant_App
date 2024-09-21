import 'package:flutter/material.dart';

import '../../../../Core/Constant/app_colors.dart';
import 'onboarding_details.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: const BoxDecoration(
          color: AppColors.havywhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: const OnboardingDetails(),
      ),
    );
  }
}
