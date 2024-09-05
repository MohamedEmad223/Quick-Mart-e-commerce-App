import 'package:flutter/material.dart';

import '../theming/app_text_style.dart';

class CustomTextForAuth extends StatelessWidget {
  const CustomTextForAuth({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: AppTextStyle.plusJakartaSans24BoldblackColor,
    );
  }
}
