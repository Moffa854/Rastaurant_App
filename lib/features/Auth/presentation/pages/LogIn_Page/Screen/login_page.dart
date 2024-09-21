import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rastourant_app1/Core/Constant/app_colors.dart';
import 'package:rastourant_app1/Core/Constant/app_images.dart';
import 'package:rastourant_app1/Core/Constant/app_text_style.dart';
import 'package:rastourant_app1/Core/Constant/sizes_app.dart';
import 'package:rastourant_app1/Core/Widgets/build_elevated_button.dart';
import 'package:rastourant_app1/features/Auth/presentation/cubit/Bool/bool_cubit.dart';
import 'package:rastourant_app1/features/Auth/presentation/widgets/build_text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      
        padding: EdgeInsets.symmetric(
          horizontal: Appsizes(context, 20, 25, 30).toDouble(),
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, Appsizes(context, -50, -70, -90).toDouble()),
                child: Image.asset(
                  AppImages.logo,
                  width: 420.w,
                  height: 420.h,
                  fit: BoxFit.cover,
                ),
              ),
              Transform.translate(
                offset:
                    Offset(0, Appsizes(context, -110, -150, -80).toDouble()),
                child: Column(
                  children: [
                    BuildTextFormField(
                      hintText: 'Username',
                      controller: usernameController,
                    ),
                    SizedBox(height: Appsizes(context, 15, 20, 25).toDouble()),
                    BuildTextFormField(
                      hintText: 'Phone',
                      controller: phoneController,
                    ),
                    SizedBox(height: Appsizes(context, 15, 20, 25).toDouble()),
                    BuildTextFormField(
                      hintText: 'Password',
                      controller: passwordController,
                      obscureText: true,
                    ),
                    BlocProvider(
                      create: (context) => BoolCubit(),
                      child: BlocBuilder<BoolCubit, bool>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    side: const BorderSide(
                                        width: 0, color: Colors.transparent),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    overlayColor: const WidgetStatePropertyAll(
                                      Colors.transparent,
                                    ),
                                    fillColor: const WidgetStatePropertyAll(
                                        AppColors.white),
                                    checkColor: AppColors.black,
                                    focusColor: AppColors.white,
                                    value: state,
                                    onChanged: (value) {
                                      context.read<BoolCubit>().taggel();
                                    },
                                  ),
                                  Text('Remember Me',
                                      style: AppTextStyle.semiBoldwhite10),
                                ],
                              ),
                              Text('Forgot Password',
                                  style: AppTextStyle.semiBoldyellow10),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: Appsizes(context, 30, 40, 50).toDouble(),
                    ),
                    BuildElevatedButton(
                      phonehight: 60,
                      tablethight: 70,
                      desktophight: 80,
                      borderRadios: 8,
                      backgroundColor: AppColors.yellow,
                      colorText: AppColors.red,
                      onPressed: () {},
                      text: 'Log In',
                      fontFamily: 'Montserrat SemiBold',
                      width: 1,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: Appsizes(context, 10, 15, 18).toDouble(),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: AppTextStyle.regularwhite9,
                          ),
                          TextSpan(
                              text: 'Sign Up here',
                              style: AppTextStyle.boldwhite9,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {}),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Appsizes(context, 50, 60, 70).toDouble(),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: AppColors.white,
                            indent: 60,
                            endIndent: 5,
                          ),
                        ),
                        Text(
                          'Or Login with',
                          style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Montserrat Regular',
                            fontSize: 11.sp,
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: AppColors.white,
                            indent: 5,
                            endIndent: 60,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Appsizes(context, 10, 20, 30).toDouble(),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              fixedSize: Size(
                                MediaQuery.of(context).size.width / 2.5,
                                Appsizes(context, 50, 60, 70).toDouble(),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.facebook,
                                width: 20.w,
                                height: 20.w,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  color: AppColors.mostlyBlack,
                                  fontSize: 12.sp,
                                  fontFamily: 'Montserrat Regular',
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: Appsizes(context, 40, 40, 50).toDouble(),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              fixedSize: Size(
                                MediaQuery.of(context).size.width / 2.5,
                                Appsizes(context, 50, 60, 70).toDouble(),
                              )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.google,
                                width: 20.w,
                                height: 20.w,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                  color: AppColors.mostlyBlack,
                                  fontSize: 12.sp,
                                  fontFamily: 'Montserrat Regular',
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
