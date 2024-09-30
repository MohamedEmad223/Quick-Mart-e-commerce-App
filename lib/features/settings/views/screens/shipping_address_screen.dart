import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/custom_button.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import 'add_address_screen.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                buttonText: 'Add Address',
                buttonAction: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddAdressScreen();
                  }));
                },
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                color: AppColors.blackColor),
            SizedBox(height: 100.h),
            CustomButton(
                buttonText: 'Remove Address',
                buttonAction: () {
                  showAlertDialog(context);
                },
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                color: AppColors.blackColor),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            "Are you sure you want to remove this address?",
            textAlign: TextAlign.center,
            style: AppTextStyle.plusJakartaSans13blackColor,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 30.h,
                width: 60.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.blackColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text('Cancl',
                    style: AppTextStyle.plusJakartaSans16BoldWhite),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 30.h,
                width: 60.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.tFFErrorColor,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child:
                    Text('Ok', style: AppTextStyle.plusJakartaSans16BoldWhite),
              ),
            ),
          ],
        );
      },
    );
  }
}
