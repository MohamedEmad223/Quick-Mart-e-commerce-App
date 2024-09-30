import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'lable_text_widgets.dart';

class ContainerBodyWidgets extends StatelessWidget {
  const ContainerBodyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.h,
      width: 390.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.w),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LableTextWidgets(
              text: 'Personal Information',
            )
          ],
        ),
      ),
    );
  }
}
