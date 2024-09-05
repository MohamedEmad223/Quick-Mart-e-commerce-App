import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/core/widgets/custom_button.dart';
import 'package:quick_mart/features/auth/sign_up/views/screens/sign_up_screen.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../../../core/widgets/forget_password.dart';
import '../../../../../core/widgets/head_of_screen_of_auth_widgets.dart';
import '../widgets/lable_text.dart';
import '../widgets/term_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadOfScreenOfAuthWidgets(
                textOne: 'Log In',
                textTwo: 'Sign up',
                screen: SignUpScreen(),
              ),
              SizedBox(height: 40.h),
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
              SizedBox(height: 50.h),
              const TermsTexts()
            ],
          ),
        ),
      ),
    ));
  }
}
