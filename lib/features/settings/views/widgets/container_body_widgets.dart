import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/settings/views/widgets/information_row_widgets.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/routes/routes.dart';
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
              routes: Routes.changePassword,
              text: 'Shipping Address',
              icon: AppImages.shippingAdressLogo,
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Payment Method',
              icon: AppImages.paymentLogo,
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Oreders History',
              icon: AppImages.orderLogo,
            ),
            SizedBox(height: 20.h),
            const LableTextWidgets(
              text: 'Support & information',
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Privacy Policy',
              icon: AppImages.privacyLogo,
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Terms & Conditions',
              icon: AppImages.termAndConsitonLogo,
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'FAQs',
              icon: AppImages.aboutUsLogo,
            ),
            SizedBox(height: 20.h),
            const LableTextWidgets(
              text: 'Account Management',
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Change Password',
              icon: AppImages.changePasswordLogo,
            ),
            const InformationRowWidgets(
              routes: Routes.changePassword,
              text: 'Dark Theme',
              icon: AppImages.darkModeLogo,
            ),
          ],
        ),
      ),
    );
  }
}
