import 'package:flutter/material.dart';

import '../theming/app_text_style.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount(
      {super.key, required this.text, required this.screen});
  final String text;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Don’t have an account?',
          style: AppTextStyle.plusJakartaSans14normalsecGreyColor,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => screen,
              ),
            );
          },
          child: Text(
            text,
            style: AppTextStyle.plusJakartaSans16BoldMainColor,
          ),
        ),
      ],
    );
  }
}
