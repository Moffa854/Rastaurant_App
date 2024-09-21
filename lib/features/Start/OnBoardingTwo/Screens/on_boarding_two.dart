import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rastourant_app1/Config/Routes/routes_name.dart';
import 'package:rastourant_app1/Core/Constant/app_images.dart';
import 'package:rastourant_app1/Core/Constant/sizes_app.dart';

import '../Widgets/build_auth_button.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.logo,
              width: 550.w,
              height: 550.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.h),
            BuildAuthButton(
                context: context, text: 'Log In', routeName: RoutesName.logIN),
            SizedBox(height: Appsizes(context, 20, 30, 40).toDouble()),
            BuildAuthButton(
                context: context,
                text: 'Sign Up',
                routeName: RoutesName.signUp),
          ],
        ),
      ),
    );
  }
}
