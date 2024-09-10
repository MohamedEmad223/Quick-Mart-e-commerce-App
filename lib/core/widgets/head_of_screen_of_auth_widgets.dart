import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/widgets/custom_text_for_auth.dart';

import '../helpers/app_images.dart';
import '../routes/routes.dart';
import 'do_not_have_an_account.dart';

class HeadOfScreenOfAuthWidgets extends StatelessWidget {
  const HeadOfScreenOfAuthWidgets(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.screen});
  final String textOne;
  final String textTwo;
  final String  screen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(AppImages.loginLogo),
        SizedBox(height: 20.h),
        CustomTextForAuth(
          text: textOne,
        ),
        DoNotHaveAnAccount(
          text: textTwo,
          routeName: screen,
        )
      ],
    );
  }
}
