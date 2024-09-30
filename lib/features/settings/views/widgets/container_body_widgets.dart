import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/settings/views/widgets/information_row_widgets.dart';

import '../../../../core/helpers/app_images.dart';
import 'lable_text_widgets.dart';

class ContainerBodyWidgets extends StatelessWidget {
  const ContainerBodyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.h,
      width: 390.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableTextWidgets(
              text: 'Personal Information',
            ),
            const InformationRowWidgets(
              text: 'Shipping Address',
              icon: AppImages.shippingAdressLogo,
            ),
            const InformationRowWidgets(
              text: 'Payment Method',
              icon: AppImages.paymentLogo,
            ),
            const InformationRowWidgets(
              text: 'Oreders History',
              icon: AppImages.orderLogo,
            ),
            SizedBox(height: 20.h),
            const LableTextWidgets(
              text: 'Support & information',
            ),
            const InformationRowWidgets(
              text: 'Privacy Policy',
              icon: AppImages.privacyLogo,
            ),
            const InformationRowWidgets(
              text: 'Terms & Conditions',
              icon: AppImages.termAndConsitonLogo,
            ),
            const InformationRowWidgets(
              text: 'FAQs',
              icon: AppImages.aboutUsLogo,
            ),
            SizedBox(height: 20.h),
            const LableTextWidgets(
              text: 'Account Management',
            ),
            const InformationRowWidgets(
              text: 'Change Password',
              icon: AppImages.changePasswordLogo,
            ),
            const InformationRowWidgets(
              text: 'Dark Theme',
              icon: AppImages.darkModeLogo,
            ),
          ],
        ),
      ),
    );
  }
}
