import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/app_text_style.dart';
import '../../../../../core/widgets/do_not_have_an_account.dart';
import '../../../sign_up/views/screens/sign_up_screen.dart';

class HeadOfLoginScreenWidgets extends StatelessWidget {
  const HeadOfLoginScreenWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/svgs/on_boarding/quickmart.svg'),
        SizedBox(height: 20.h),
        Text(
          'Log In',
          textAlign: TextAlign.left,
          style: AppTextStyle.plusJakartaSans24BoldblackColor,
        ),
        const DoNotHaveAnAccount(
          text: 'Sign Up',
          screen: SignUpScreen(),
        )
      ],
    );
  }
}
