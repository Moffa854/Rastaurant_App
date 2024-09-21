import 'package:flutter/material.dart';
import 'package:rastourant_app1/Core/Constant/app_colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: AppColors.red,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.red,
    ),
  );
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: AppColors.red,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.red,
    ),
  );
}
