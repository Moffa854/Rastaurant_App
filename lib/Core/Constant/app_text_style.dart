import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle boldBlack25 = TextStyle(
    color: AppColors.black,
    fontSize: 25.sp,
    fontFamily: 'Montserrat Bold',
  );
  static TextStyle regularBlack18 = TextStyle(
    color: AppColors.black,
    fontSize: 16.sp,
    fontFamily: 'Montserrat Regular',
  );
  static TextStyle semiBoldyellow10 = TextStyle(
    color: AppColors.yellow,
    fontSize: 10.sp,
    fontFamily: 'Montserrat SemiBold',
  );
  static TextStyle semiBoldwhite10 = TextStyle(
    color: AppColors.white,
    fontSize: 10.sp,
    fontFamily: 'Montserrat SemiBold',
  );
  static TextStyle regularwhite9 = TextStyle(
    fontSize: 9.sp,
    fontFamily: 'Montserrat Regular',
    color: AppColors.white,
  );
  static TextStyle boldwhite9 = TextStyle(
    fontSize: 9.sp,
    fontFamily: 'Montserrat Bold',
    color: AppColors.white,
  );
}
