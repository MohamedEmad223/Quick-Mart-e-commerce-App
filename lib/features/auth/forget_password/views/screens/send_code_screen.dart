import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

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
            
          ],
        ),
      )),
    );
  }
}
