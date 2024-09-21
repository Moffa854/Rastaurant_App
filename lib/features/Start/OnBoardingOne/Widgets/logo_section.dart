import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Constant/app_images.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 300,
      left: 0,
      right: 0,
      child: Image.asset(
        AppImages.piclogo,
        width: 450.w,
        height: 450.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
