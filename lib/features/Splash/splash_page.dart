import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rastourant_app1/Config/Routes/routes_name.dart';
import 'package:rastourant_app1/Core/Constant/app_images.dart';
import 'package:rastourant_app1/Core/Extensions/app_navigations.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.pushReplacementNamed(
        pageRoute: RoutesName.onboardingOne,
      ),
    );
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          fit: BoxFit.cover,
          width: 450.w,
          height: 450.h,
        ),
      ),
    );
  }
}
