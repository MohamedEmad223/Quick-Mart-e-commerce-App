import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';
import 'package:quick_mart/features/auth/forget_password/views/screens/send_code_screen.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../sign_in/sign_up/views/widgets/lable_text.dart';
import '../widgets/head_of_forget_password_widgets.dart';

class EmailConfirmation extends StatefulWidget {
  const EmailConfirmation({super.key});

  @override
  State<EmailConfirmation> createState() => _EmailConfirmationState();
}

class _EmailConfirmationState extends State<EmailConfirmation> {
  late ForgetpasswordCubit forgetpasswordCubit;
  @override
  void initState() {
    forgetpasswordCubit = BlocProvider.of<ForgetpasswordCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(),
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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SendCodeScreen(),
                ));
            HelperMethods.showCustomSnackBarSuccess(
                context, 'Email Confirmation Success');
          }
        },
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
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
                    }else if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }else if (!value.contains('.')) {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SendCodeScreen(),
                        ));
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
