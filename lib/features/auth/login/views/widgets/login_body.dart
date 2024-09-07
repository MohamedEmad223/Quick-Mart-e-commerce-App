import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/constants/app_constants.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/widgets/custom_text_form_feild.dart';
import 'package:quick_mart/features/auth/login/logic/cubit/login_cubit.dart';
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
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message!)));
        }
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, Routes.home);
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login Success')));
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableText(
              lableText: 'Email',
            ),
            SizedBox(height: 20.h),
            CustomTextFormFeild(
              controller: context.read<LoginCubit>().emailController,
              kyTyp: TextInputType.emailAddress,
              hintText: 'Enter your email',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            SizedBox(height: 20.h),
            const LableText(
              lableText: 'Password',
            ),
            SizedBox(height: 20.h),
            CustomTextFormFeild(
              controller: context.read<LoginCubit>().passwordController,
              kyTyp: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
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
            // const ForgetPassword(),
            SizedBox(height: 25.h),
            CustomButton(
              height: 50.h,
              buttonText: 'Login',
              buttonAction: () async {
                if (formKey.currentState!.validate()) {
                  await context
                      .read<LoginCubit>()
                      .login(AppConstants.loginPath, {
                    'email': context.read<LoginCubit>().emailController.text,
                    'password':
                        context.read<LoginCubit>().passwordController.text,
                  });
                }
              },
              buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
              color: AppColors.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
