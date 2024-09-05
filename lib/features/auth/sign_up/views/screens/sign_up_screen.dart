import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/head_of_screen_of_auth_widgets.dart';
import 'package:quick_mart/features/auth/login/views/screens/log_in_screen.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../login/views/widgets/lable_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadOfScreenOfAuthWidgets(
                textOne: 'Signup', textTwo: 'Login', screen: LogInScreen()),
            SizedBox(height: 40.h),
            const LableText(
              lableText: 'Full Name',
            ),
            SizedBox(height: 20.h),
            const CustomTextFormFeild(
              hintText: 'Enter your name',
            ),
            SizedBox(height: 20.h),
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
            SizedBox(height: 50.h),
            CustomButton(
              height: 50.h,
              buttonText: 'Create Account',
              buttonAction: () {},
              buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
              color: AppColors.blackColor,
            ),
          ],
        ),
      ),
    )));
  }
}
