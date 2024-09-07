import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/custom_text_form_feild.dart';
import 'package:quick_mart/features/auth/login/views/widgets/lable_text.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/forget_password.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LableText(
          lableText: 'Email',
        ),
        SizedBox(height: 20.h),
        const CustomTextFormFeild(
          hintText: 'Enter your email',
        ),
        SizedBox(height: 20.h),
        const LableText(
          lableText: 'Password',
        ),
        SizedBox(height: 20.h),
        CustomTextFormFeild(
          isObscureText: _isObscure,
          hintText: 'Enter your Password',
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
            child: _isObscure
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
        SizedBox(height: 20.h),
        const ForgetPassword(),
        SizedBox(height: 25.h),
        CustomButton(
          height: 50.h,
          buttonText: 'Login',
          buttonAction: () {},
          buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
          color: AppColors.blackColor,
        ),
      ],
    );
  }
}
