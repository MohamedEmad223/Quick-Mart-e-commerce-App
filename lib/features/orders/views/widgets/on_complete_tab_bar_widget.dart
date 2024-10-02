import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';

class OnCompleteTabBarWidget extends StatelessWidget {
  const OnCompleteTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset('assets/images/01 Online Shopping 2.png'),
          Text(
            'No completed order',
            style: AppTextStyle.plusJakartaSans16BoldMainColor
                .copyWith(color: AppColors.blackColor, fontSize: 20.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'We don\'t have any past orders that have been completed.completed. Start shopping now and create your first order with us.',
            style: AppTextStyle.plusJakartaSans14mediumlsecGreyColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
