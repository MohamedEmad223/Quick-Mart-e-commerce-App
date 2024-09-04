import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart/core/theming/app_colors.dart';

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

  static TextStyle cairo24BoldWhite = GoogleFonts.plusJakartaSans(
    color: AppColors.blackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle cairo14normalsecGreyColor = GoogleFonts.plusJakartaSans(
    color: AppColors.secGreyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );
}
