import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    );
  }
}
