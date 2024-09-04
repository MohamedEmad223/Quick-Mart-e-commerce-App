import 'package:flutter/material.dart';

import '../theming/app_text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text('Forgot Password?',
              style: AppTextStyle.plusJakartaSans14mediummainColor),
        ),
      ],
    );
  }
}
