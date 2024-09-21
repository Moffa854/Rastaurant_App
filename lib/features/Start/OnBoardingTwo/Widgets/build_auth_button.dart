import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rastourant_app1/Core/Extensions/app_navigations.dart';

import '../../../../Core/Constant/app_colors.dart';
import '../../../../Core/Widgets/build_elevated_button.dart';

class BuildAuthButton extends StatelessWidget {
  const BuildAuthButton({
    super.key,
    required this.context,
    required this.text,
    required this.routeName,
  });

  final BuildContext context;
  final String text;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return BuildElevatedButton(
      phonehight: 50,
      tablethight: 60,
      desktophight: 70,
      borderRadios: 8,
      backgroundColor: AppColors.yellow,
      colorText: AppColors.red,
      onPressed: () {
        context.pushNamed(pageRoute: routeName);
      },
      text: text,
      fontFamily: 'Montserrat SemiBold',
      width: 1.2,
      fontSize: 16.sp,
    );
  }
}
