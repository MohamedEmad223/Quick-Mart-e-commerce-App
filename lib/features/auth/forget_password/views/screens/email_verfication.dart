import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/auth/forget_password/views/screens/send_code_screen.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../sign_in/sign_up/views/widgets/lable_text.dart';
import '../widgets/head_of_forget_password_widgets.dart';

class EmailConfirmation extends StatelessWidget {
  const EmailConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
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
              controller: emailController,
              hintText: 'Enter your email',
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
      )),
    );
  }
}
