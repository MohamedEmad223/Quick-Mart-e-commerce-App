import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/constants/app_constants.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../logic/cubit/Auth_cubit.dart';
import 'lable_text.dart';

class BodyOfSignupScreen extends StatefulWidget {
  const BodyOfSignupScreen({super.key});

  @override
  State<BodyOfSignupScreen> createState() => _BodyOfSignupScreenState();
}

class _BodyOfSignupScreenState extends State<BodyOfSignupScreen> {
  bool _isObscure = true;
  bool _isObscureConfirm = true;
  late AuthCubit authCubit;
  @override
  void initState() {
    authCubit = BlocProvider.of<AuthCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    authCubit.emailSignUpController.dispose();
    authCubit.passwordSignUpController.dispose();
    authCubit.phoneNumberSignUpController.dispose();
    authCubit.nameController.dispose();
    authCubit.confirmPasswordSignUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpError) {
          Navigator.pop(context);
          HelperMethods.showCustomSnackBarError(context, state.message!);
        }
        if (state is SignUpLoading) {
          HelperMethods.showLoadingAlertDialog(context);
        }
        if (state is SignUpSuccess) {
          Navigator.pop(context);
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.home, (route) => false);
          HelperMethods.showCustomSnackBarSuccess(context, 'SignUp Success');
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableText(
              lableText: 'Full Name',
            ),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: authCubit.nameController,
              hintText: 'Enter your name',
              kyTyp: TextInputType.name,
            ),
            SizedBox(height: 10.h),
            const LableText(
              lableText: 'Email',
            ),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: authCubit.emailSignUpController,
              kyTyp: TextInputType.emailAddress,
              hintText: 'Enter your email',
            ),
            SizedBox(height: 10.h),
            const LableText(
              lableText: 'Password',
            ),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: authCubit.passwordSignUpController,
              isObscureText: _isObscure,
              kyTyp: TextInputType.visiblePassword,
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
            SizedBox(height: 10.h),
            const LableText(
              lableText: 'Password Confirmation',
            ),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: authCubit.confirmPasswordSignUpController,
              isObscureText: _isObscureConfirm,
              kyTyp: TextInputType.visiblePassword,
              hintText: 'Enter your Password',
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _isObscureConfirm = !_isObscureConfirm;
                  });
                },
                child: _isObscureConfirm
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 10.h),
            const LableText(
              lableText: 'Phone Number',
            ),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: authCubit.phoneNumberSignUpController,
              kyTyp: TextInputType.phone,
              hintText: 'Enter your Phone Number',
            ),
            SizedBox(height: 50.h),
            CustomButton(
              height: 50.h,
              buttonText: 'Create Account',
              buttonAction: () {
                authCubit.signUp(
                  AppConstants.signUpPath,
                  {
                    'name': authCubit.nameController.text,
                    'email': authCubit.emailSignUpController.text,
                    'password': authCubit.passwordSignUpController.text,
                    'rePassword':
                        authCubit.confirmPasswordSignUpController.text,
                    'phone': authCubit.phoneNumberSignUpController.text,
                  },
                );
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
