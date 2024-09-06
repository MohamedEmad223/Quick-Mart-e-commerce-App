import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/core/widgets/custom_button.dart';

import '../../../../../core/theming/app_text_style.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: Column(
              children: [
                Container(
                    width: 328.w,
                    height: 408.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.cyanColor),
                    child: Image.asset('assets/images/Rectangle 1741.png')),
                SizedBox(height: 20.h),
                Text(
                  'New password set\n successfully',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.plusJakartaSans24BoldblackColor,
                ),
                SizedBox(height: 20.h),
                Text(
                  'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.plusJakartaSans14normalsecGreyColor,
                ),
                SizedBox(height: 40.h),
                CustomButton(
                    buttonText: 'Log In',
                    buttonAction: () {
                      Navigator.pushNamed(context, Routes.logIn);
                    },
                    buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                    color: AppColors.blackColor,
                    height: 50.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
