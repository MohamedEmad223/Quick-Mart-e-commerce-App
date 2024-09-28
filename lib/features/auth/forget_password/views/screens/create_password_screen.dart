import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';
import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/helpers/helper_methods.dart';
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
    createPasswordCubit.resetPasswordController.dispose();
    createPasswordCubit.resetemailController.dispose();
    createPasswordCubit.close();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
      listener: (context, state) {
        if (state is CreatePasswordLoading) {
          HelperMethods.showLoadingAlertDialog(context);
        } else if (state is CreatePasswordError) {
          Navigator.pop(context);
          HelperMethods.showCustomSnackBarError(context, state.message!);
        } else if (state is CreatePasswordSuccess) {
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, Routes.success);
          HelperMethods.showCustomSnackBarSuccess(context, 'Password Created');
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 70.h),
            child: Form(
              key: formKey,
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
                    kyTyp: TextInputType.emailAddress,
                    hintText: 'Enter your Email',
                    controller: createPasswordCubit.resetemailController,
                  ),
                  SizedBox(height: 20.h),
                  const LableText(
                    lableText: 'Confirm Password',
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormFeild(
                    kyTyp: TextInputType.visiblePassword,
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
                    controller: createPasswordCubit.resetPasswordController,
                  ),
                  SizedBox(height: 40.h),
                  CustomButton(
                    buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                    height: 50.h,
                    color: AppColors.blackColor,
                    buttonText: 'Save',
                    buttonAction: () {
                      if (formKey.currentState!.validate()) {
                        createPasswordCubit
                            .resetPassword(AppConstants.resetPasswordPath, {
                          'email':
                              createPasswordCubit.resetemailController.text,
                          'newPassword':
                              createPasswordCubit.resetPasswordController.text,
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
