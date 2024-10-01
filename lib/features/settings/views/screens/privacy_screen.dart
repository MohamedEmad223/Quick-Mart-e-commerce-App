import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_style.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: AppTextStyle.plusJakartaSans14mediumblackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Policy',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              Text(
                'At QuickMart, we are committed to protecting the privacy and security of our users personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '1. Information Collection:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - Personal Information: We may collect personal information such as name, address, email, and phone number when you create an account, make a purchase, or interact with our services.\n- Transaction Details: We collect information related to your purchases, including order history, payment method, and shipping details.\n - Usage Data: We may collect data on how you interact with our app, such as browsing activity, search queries, and preferences.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '2. Information Use:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - Provide Services: We use the collected information to process orders, deliver products, and provide customer support.\n- Personalization: We may use your information to personalize your shopping experience, recommend products, and display targeted advertisements.\n- Communication: We may use your contact information to send important updates, promotional offers, and newsletters. You can opt-out of these communications at any time.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '3. Information Sharing:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '    - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, fulfilling orders, and improving our services.\n - Legal Compliance: We may disclose personal information if required by law or in response to a valid legal request from authorities.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '4. Data Security:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction.\n- However, please note that no data transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security of your information.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '5. User Rights:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - Access and Update: You have the right to access, correct, or update your personal information stored in our app.\n- Data Retention: We retain your personal information as long as necessary to provide our services and comply with legal obligations.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '6. Children Privacy:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - QuickMart is not intended for children under the age of 13. We do not knowingly collect or solicit personal information from children.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '7. Updates to the Privacy Policy:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - We reserve the right to update this Privacy Policy from time to time. Any changes will be posted on our app, and the revised policy will be effective upon posting.\nIf you have any questions or concerns about our Privacy Policy, please contact our customer support. By using QuickMart, you acknowledge that you have read and understood this Privacy Policy and agree to its terms and conditions.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
