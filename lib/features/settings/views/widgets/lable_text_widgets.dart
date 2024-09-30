import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_style.dart';

class LableTextWidgets extends StatelessWidget {
  const LableTextWidgets({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyle.plusJakartaSans12boldblackColor,
    );
  }
}
