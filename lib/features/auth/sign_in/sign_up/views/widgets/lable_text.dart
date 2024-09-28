import 'package:flutter/material.dart';
import 'package:quick_mart/core/theming/app_text_style.dart';

class LableText extends StatelessWidget {
  const LableText({super.key, required this.lableText});
  final String lableText;

  @override
  Widget build(BuildContext context) {
    return Text(lableText,
        style: AppTextStyle.plusJakartaSans14mediumblackColor);
  }
}
