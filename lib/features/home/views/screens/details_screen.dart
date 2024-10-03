import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import '../../../../core/widgets/custom_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.image, this.price, this.productName});
  final String? image;
  final String? price;
  final String? productName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(image!),
        Text(productName!),
        Text(price!),
        Row(
          children: [
            CustomButton(
                buttonText: 'Log In',
                buttonAction: () {},
                buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
                color: AppColors.blackColor,
                height: 50.h)
          ],
        )
      ],
    ));
  }
}
