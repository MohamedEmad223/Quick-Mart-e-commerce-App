import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart/core/helpers/app_colors.dart';

class AppTextStyle {
  static TextStyle cairo16BoldMainColor = GoogleFonts.plusJakartaSans(
    color: AppColors.mainColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle cairo16BoldWhite = GoogleFonts.plusJakartaSans(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
}
