import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_feild.dart';
import '../../../login/views/widgets/lable_text.dart';

class EmailConfirmation extends StatelessWidget {
  const EmailConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Confirmation',
              textAlign: TextAlign.left,
              style: AppTextStyle.plusJakartaSans24BoldblackColor,
            ),
            SizedBox(height: 10.h),
            Text(
              'Enter your email address for verification.',
              textAlign: TextAlign.left,
              style: AppTextStyle.plusJakartaSans14normalsecGreyColor,
            ),
            SizedBox(height: 20.h),
            const LableText(
              lableText: 'Email',
            ),
            SizedBox(height: 20.h),
            const CustomTextFormFeild(
              hintText: 'Enter your email',
            ),
            SizedBox(height: 40.h),
            CustomButton(
              height: 50.h,
              buttonText: 'Login',
              buttonAction: () {},
              buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
              color: AppColors.blackColor,
            ),
          ],
        ),
      )),
    );
  }
}
