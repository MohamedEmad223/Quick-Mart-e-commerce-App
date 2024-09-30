import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/custom_text_form_feild.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/views/widgets/lable_text.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import '../../../../core/widgets/custom_button.dart';

class AddAdressScreen extends StatelessWidget {
  const AddAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController detailsController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: AppTextStyle.plusJakartaSans14mediumblackColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableText(lableText: 'Name'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
                hintText: 'Enter your Name', controller: nameController),
            SizedBox(height: 20.h),
            const LableText(lableText: 'Details Address'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
                hintText: 'Enter your Details Address',
                controller: detailsController),
            SizedBox(height: 20.h),
            const LableText(lableText: 'Phone Number'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
                hintText: 'Enter your Phone Number',
                controller: phoneController),
            SizedBox(height: 20.h),
            const LableText(lableText: 'City'),
            SizedBox(height: 10.h),
            CustomTextFormFeild(
                hintText: 'Enter your City', controller: cityController),
            SizedBox(height: 50.h),
            CustomButton(
                buttonText: 'Save',
                buttonAction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddAdressScreen();
                  }));
                },
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                color: AppColors.blackColor),
          ],
        ),
      ),
    );
  }
}
