import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';

class TermAndConditions extends StatelessWidget {
  const TermAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Term and Conditions',
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
                'Terms & Conditions',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              Text(
                'Welcome to QuickMart! These Terms and Conditions ("Terms") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '1. Account Registration:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - You must create an account to use certain features of QuickMart.\n - You are responsible for providing accurate and up-to-date information during the registration process.\n- You must safeguard your account credentials and notify us immediately of any unauthorized access or use of your account.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '2. Product Information and Pricing:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - QuickMart strives to provide accurate product descriptions, images, and pricing information.\n- We reserve the right to modify product details and prices without prior notice.\n - In the event of an error, we may cancel or refuse orders placed for incorrectly priced products.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '3. Order Placement and Fulfillment:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - By placing an order on QuickMart, you agree to purchase the selected products at the stated price.\n - We reserve the right to accept or reject any order, and we may cancel orders due to product unavailability, pricing errors, or suspected fraudulent activity.\n- Once an order is confirmed, we will make reasonable efforts to fulfill and deliver it in a timely manner.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '4. Payment:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - QuickMart supports various payment methods, including credit/debit cards and online payment platforms.\n- By providing payment information, you represent and warrant that you are authorized to use the chosen payment method. \n- All payments are subject to verification and approval by relevant financial institutions.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '5. Shipping and Delivery:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '    - QuickMart will make reasonable efforts to ensure timely delivery of products.\n - Shipping times may vary based on factors beyond our control, such as location, weather conditions, or carrier delays.\n- Risk of loss or damage to products passes to you upon delivery.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '6. Returns and Refunds:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '''   - QuickMart's return and refund policies are outlined separately and govern the process for returning products and seeking refunds.\n   - Certain products may be non-returnable or subject to specific conditions.
                ''',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '7. Intellectual Property:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '    - QuickMart and its content, including logos, trademarks, text, images, and software, are protected by intellectual property rights.\n- You may not use, reproduce, modify, distribute, or display any part of QuickMart without our prior written consent.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '8. User Conduct:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '   - You agree to use QuickMart in compliance with applicable laws and regulations.\n- You will not engage in any activity that disrupts or interferes with the functioning of QuickMart or infringes upon the rights of others.\n - Any unauthorized use or attempt to access restricted areas or user accounts is strictly prohibited.',
                style: AppTextStyle.plusJakartaSans12boldblackColor
                    .copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 20.h),
              Text(
                '9. Limitation of Liability:',
                style: AppTextStyle.plusJakartaSans13blackColor
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),
              Text(
                '    - QuickMart and its affiliates shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from the use or inability to use our app or any products purchased through it.\n - We do not guarantee the accuracy, completeness, or reliability of information provided on QuickMart.',
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
