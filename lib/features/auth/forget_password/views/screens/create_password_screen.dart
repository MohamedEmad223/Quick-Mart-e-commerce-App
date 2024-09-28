import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';
import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../sign_in/sign_up/views/widgets/lable_text.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool _isObscure = true;
  late ForgetpasswordCubit createPasswordCubit;
  @override
  void initState() {
    createPasswordCubit = BlocProvider.of<ForgetpasswordCubit>(context);
    super.initState();
  }

  @override
  void dispose() { 
    super.dispose();
    createPasswordCubit.passwordController.dispose();
    createPasswordCubit.confirmPasswordController.dispose();
    createPasswordCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 70.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadOfForgetPasswordWidgets(
                  textOne: 'New Password',
                  textTwo: 'Enter your new password and remember it.'),
              SizedBox(height: 20.h),
              const LableText(
                lableText: 'Email',
              ),
              SizedBox(height: 20.h),
              CustomTextFormFeild(
                hintText: 'Enter your Email',
                controller: createPasswordCubit.passwordController,
              ),
              SizedBox(height: 20.h),
              const LableText(
                lableText: 'Confirm Password',
              ),
              SizedBox(height: 20.h),
              CustomTextFormFeild(
                isObscureText: _isObscure,
                hintText: 'Enter your Confirm Password',
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
                controller: createPasswordCubit.confirmPasswordController,
              ),
              SizedBox(height: 40.h),
              CustomButton(
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                height: 50.h,
                color: AppColors.blackColor,
                buttonText: 'Save',
                buttonAction: () {
                  Navigator.pushReplacementNamed(context, Routes.success);
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
