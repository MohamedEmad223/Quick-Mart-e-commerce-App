import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_text_style.dart';

class HeadOfForgetPasswordWidgets extends StatelessWidget {
  const HeadOfForgetPasswordWidgets(
      {super.key, required this.textOne, required this.textTwo});
  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textOne,
          textAlign: TextAlign.left,
          style: AppTextStyle.plusJakartaSans24BoldblackColor,
        ),
        SizedBox(height: 10.h),
        Text(
          textTwo,
          textAlign: TextAlign.left,
          style: AppTextStyle.plusJakartaSans14normalsecGreyColor,
        ),
      ],
    );
  }
}
