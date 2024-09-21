import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rastourant_app1/Core/Constant/app_colors.dart';
import 'package:rastourant_app1/Core/Constant/sizes_app.dart';

class BuildTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputType? textInputType;
  const BuildTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    this.obscureText,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.name,
      obscuringCharacter: '*',
      obscureText: obscureText ?? false,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Vaild Inter';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.all(
          Appsizes(context, 12, 23, 28).toDouble(),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            color: AppColors.darkGrey,
            fontSize: 10.sp,
            fontFamily: 'Montserrat Medium'),
        filled: true,
        fillColor: AppColors.flashwhite,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
