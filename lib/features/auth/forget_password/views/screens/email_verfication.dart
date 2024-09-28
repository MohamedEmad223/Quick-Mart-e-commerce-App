import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/constants/app_constants.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../sign_in/sign_up/views/widgets/lable_text.dart';
import '../widgets/head_of_forget_password_widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late ForgetpasswordCubit forgetpasswordCubit;
  @override
  void initState() {
    forgetpasswordCubit = BlocProvider.of<ForgetpasswordCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    forgetpasswordCubit.emailController.dispose();
    forgetpasswordCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      body: BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
        listener: (context, state) {
          if (state is ForgetpasswordError) {
            Navigator.pop(context);
            HelperMethods.showCustomSnackBarError(context, state.message!);
          }
          if (state is ForgetpasswordLoading) {
            HelperMethods.showLoadingAlertDialog(context);
          }
          if (state is ForgetpasswordSuccess) {
            Navigator.pop(context);
            Navigator.pushNamed(
              context,
              Routes.sendCodeScreen,
            );
            HelperMethods.showCustomSnackBarSuccess(
                context, 'Email Confirmation Success');
          }
        },
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 70.h),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadOfForgetPasswordWidgets(
                  textOne: 'Email Confirmation',
                  textTwo: 'Enter your email address for verification.',
                ),
                SizedBox(height: 20.h),
                const LableText(
                  lableText: 'Email',
                ),
                SizedBox(height: 20.h),
                CustomTextFormFeild(
                  controller: forgetpasswordCubit.emailController,
                  hintText: 'Enter your email',
                  kyTyp: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    } else if (!value.contains('.')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40.h),
                CustomButton(
                  height: 50.h,
                  buttonText: 'send',
                  buttonAction: () {
                    if (formKey.currentState!.validate()) {
                      forgetpasswordCubit
                          .forgetPassword(AppConstants.forgetPasswordPath, {
                        'email': forgetpasswordCubit.emailController.text,
                      });
                    }
                  },
                  buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                  color: AppColors.blackColor,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
