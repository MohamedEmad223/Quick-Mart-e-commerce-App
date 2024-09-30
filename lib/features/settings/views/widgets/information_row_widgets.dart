import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theming/app_text_style.dart';

class InformationRowWidgets extends StatelessWidget {
  const InformationRowWidgets(
      {super.key,
      required this.text,
      required this.icon,
      required this.routes});
  final String text;
  final String icon;
  final String routes;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          routes,
        );
      },
      child: Column(
        children: [
          SizedBox(height: 15.h),
          Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(width: 10.w),
              Text(
                text,
                style: AppTextStyle.plusJakartaSans14mediumlsecGreyColor,
              ),
              const Spacer(),
              SvgPicture.asset(AppImages.backArrowLogo),
            ],
          )
        ],
      ),
    );
  }
}
