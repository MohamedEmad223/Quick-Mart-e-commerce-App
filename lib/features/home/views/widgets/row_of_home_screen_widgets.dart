import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_images.dart';

class RowOfHomeScreen extends StatelessWidget {
  const RowOfHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.loginLogo),
        const Spacer(),
        SvgPicture.asset(AppImages.searchLogo),
      ],
    );
  }
}
