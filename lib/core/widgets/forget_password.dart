import 'package:flutter/material.dart';

import '../../features/auth/forget_password/views/screens/email_verfication.dart';
import '../theming/app_text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EmailConfirmation(),
              ),
            );
          },
          child: Text('Forgot Password?',
              style: AppTextStyle.plusJakartaSans14mediummainColor),
        ),
      ],
    );
  }
}
