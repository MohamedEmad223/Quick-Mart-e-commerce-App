import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/views/widgets/lable_text.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_feild.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController currentPasswordController =
        TextEditingController();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: AppTextStyle.plusJakartaSans14mediumblackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableText(lableText: 'Current Password'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: currentPasswordController,
              hintText: 'Enter your current password',
            ),
            SizedBox(height: 20.h),
            const LableText(lableText: 'New Password'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: newPasswordController,
              hintText: 'Enter your New password',
            ),
            SizedBox(height: 20.h),
            const LableText(lableText: 'Confirm Password'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
              controller: confirmPasswordController,
              hintText: 'Enter your Confirm password',
            ),
            SizedBox(height: 50.h),
            CustomButton(
                buttonText: 'Save',
                buttonAction: () {},
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                color: AppColors.blackColor),
          ],
        ),
      ),
    );
  }
}
