import 'package:flutter/material.dart';
import 'package:quick_mart/core/theming/app_text_style.dart';

class TermsTexts extends StatelessWidget {
  const TermsTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppTextStyle.plusJakartaSans13blackColor,
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppTextStyle.plusJakartaSans13cyanColor,
          ),
          TextSpan(
            text: ' and',
            style: AppTextStyle.plusJakartaSans13blackColor,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppTextStyle.plusJakartaSans13cyanColor,
          ),
        ],
      ),
    );
  }
}
