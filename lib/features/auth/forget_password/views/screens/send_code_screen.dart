import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_mart/core/constants/app_constants.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';
import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/them_of_pinput.dart';

class SendCodeScreen extends StatefulWidget {
  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  late ForgetpasswordCubit sendCodeCubit;
  @override
  void initState() {
    sendCodeCubit = BlocProvider.of<ForgetpasswordCubit>(context);
    super.initState();
  }

  @override
  void dispose() {
    sendCodeCubit.codeController.dispose();
    sendCodeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
      listener: (context, state) {
        if (state is VerifycodeError) {
          Navigator.pop(context);
          HelperMethods.showCustomSnackBarError(context, state.message!);
        }
        if (state is VerifycodeLoading) {
          HelperMethods.showLoadingAlertDialog(context);
        }
        if (state is VerifycodeSuccess) {
          Navigator.pop(context);
          Navigator.pushNamed(context, Routes.createPasswordScreen);
          HelperMethods.showCustomSnackBarSuccess(
              context, 'Verify Code Success');
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const HeadOfForgetPasswordWidgets(
                    textOne: 'Email Verification',
                    textTwo:
                        'Enter the 6-digit verification code send to your\n email address.'),
                SizedBox(height: 20.h),
                Pinput(
                  keyboardType: TextInputType.number,
                  length: 6,
                  obscuringCharacter: '•',
                  defaultPinTheme: defaultPinTheme,
                  autofocus: true,
                  controller: sendCodeCubit.codeController,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration?.copyWith(
                      border: Border.all(
                        color: AppColors.mainColor,
                        width: 3,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the code';
                    } else if (value.length < 6) {
                      return 'Please enter the correct code';
                    } else if (value.contains(RegExp(r'[a-zA-Z]'))) {
                      return 'Please enter the correct code';
                    }
                    return null;
                  },
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) async {
                    if (formKey.currentState!.validate()) {
                      sendCodeCubit.verifyCode(AppConstants.verifyCodePath, {
                        "resetCode": sendCodeCubit.codeController.text,
                      });
                    }
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  'Resend code',
                  style: AppTextStyle.plusJakartaSans16BoldMainColor,
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  height: 50.h,
                  buttonText: 'Verify',
                  buttonAction: () {
                    if (formKey.currentState!.validate()) {
                      sendCodeCubit.verifyCode(AppConstants.verifyCodePath, {
                        "resetCode": sendCodeCubit.codeController.text,
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
