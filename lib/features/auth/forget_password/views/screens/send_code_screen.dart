import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/features/auth/forget_password/views/screens/create_password_screen.dart';
import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/them_of_pinput.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
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
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration?.copyWith(
                  border: Border.all(
                    color: AppColors.mainColor,
                    width: 3,
                  ),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration?.copyWith(
                  color: Colors.white,
                ),
              ),
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) async {},
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreatePasswordScreen(),
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
