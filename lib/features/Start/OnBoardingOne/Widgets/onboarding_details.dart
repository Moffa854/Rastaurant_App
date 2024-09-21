import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rastourant_app1/Config/Routes/routes_name.dart';
import 'package:rastourant_app1/Core/Extensions/app_navigations.dart';

import '../../../../Core/Constant/app_colors.dart';
import '../../../../Core/Constant/app_svg.dart';
import '../../../../Core/Constant/app_text_style.dart';
import '../../../../Core/Constant/sizes_app.dart';
import '../../../../Core/Widgets/build_elevated_button.dart';

class OnboardingDetails extends StatelessWidget {
  const OnboardingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: Appsizes(context, 80, 60, 80).toDouble(),
          ),
          child: SvgPicture.asset(
            AppSvg.frame,
            fit: BoxFit.cover,
            width: 200.w,
            height: 200.h,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          textAlign: TextAlign.center,
          'Good food\n within minutes!',
          style: AppTextStyle.boldBlack25,
        ),
        Text(
          'Don’t starve, just order!',
          style: AppTextStyle.regularBlack18,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: Appsizes(context, 25, 30, 35).toDouble(),
          ),
          child: BuildElevatedButton(
            phonehight: 50,
            tablethight: 65,
            desktophight: 70,
            borderRadios: 5,
            backgroundColor: AppColors.yellow,
            colorText: AppColors.red,
            onPressed: () {
              context.pushNamed(pageRoute: RoutesName.onboardingTwo);
            },
            text: 'Get Started',
            fontFamily: 'Montserrat SemiBold',
            width: 1.2,
            fontSize: 15.sp,
          ),
        )
      ],
    );
  }
}
