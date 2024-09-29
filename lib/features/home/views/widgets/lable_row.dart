import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_style.dart';

class LableRow extends StatelessWidget {
  const LableRow({super.key, required this.lable, required this.seeAll});
  final String lable;
  final String seeAll;

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  Text(lable,
                      style: AppTextStyle.plusJakartaSans18boldblackColor),
                  const Spacer(),
                  Text(seeAll,
                      style: AppTextStyle.plusJakartaSans14mediummainColor)
                ],
              );
  }
}