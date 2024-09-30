import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/helpers/app_images.dart';
import 'package:quick_mart/core/theming/app_colors.dart';
import 'package:quick_mart/core/theming/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100.h,
                  width: 390.w,
                  decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 35.w,
                          color: Colors.white,
                          child: const Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mohamed Emad',
                              style:
                                  AppTextStyle.plusJakartaSans16boldwhiteColor,
                            ),
                            Text(
                              'Mohamed@gmail.com',
                              style:
                                  AppTextStyle.plusJakartaSans14boldwhiteColor,
                            ),
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(AppImages.logOutLogo)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
