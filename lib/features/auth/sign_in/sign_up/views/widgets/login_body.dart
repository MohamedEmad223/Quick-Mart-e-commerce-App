import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/constants/app_constants.dart';
import 'package:quick_mart/core/helpers/helper_methods.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/widgets/custom_text_form_feild.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/logic/cubit/Auth_cubit.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/views/widgets/lable_text.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_style.dart';
import '../../../../../../core/widgets/custom_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool _isObscure = true;
  late AuthCubit logincubit;

  @override
  void initState() {
    logincubit = BlocProvider.of<AuthCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    logincubit.emailController.dispose();
    logincubit.passwordController.dispose();
    logincubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginError) {
          HelperMethods.showCustomSnackBarError(context, state.message!);
          log(state.message.toString());
        }
        if (state is LoginLoading) {
          HelperMethods.showLoadingAlertDialog(context);
        }
        if (state is LoginSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.home, (route) => false);
          HelperMethods.showCustomSnackBarSuccess(context, 'Login Success');
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
              controller: logincubit.emailController,
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
              controller: logincubit.passwordController,
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
                  await logincubit.login(AppConstants.loginPath, {
                    'email': logincubit.emailController.text,
                    'password': logincubit.passwordController.text,
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
