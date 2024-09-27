import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/routes.dart';

import '../theming/app_text_style.dart';

class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount(
      {super.key, required this.text, required this.routeName});
  final String text;
  
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Don’t have an account?',
          style: AppTextStyle.plusJakartaSans14normalsecGreyColor,
        ),
        GestureDetector(
          onTap: () => routeName == Routes.logIn
                ? Navigator.pushNamed(
                    context,
                    routeName,
                  )
                : Navigator.pushNamedAndRemoveUntil(
                    context, routeName, (route) => false),
          child: Text(
            text,
            style: AppTextStyle.plusJakartaSans16BoldMainColor,
          ),
        ),
      ],
    );
  }
}
