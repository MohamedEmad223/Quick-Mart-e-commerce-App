import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_mart/core/theming/app_colors.dart';

class AppTextStyle {
  static TextStyle plusJakartaSans16BoldMainColor = GoogleFonts.plusJakartaSans(
    color: AppColors.mainColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle plusJakartaSans16BoldWhite = GoogleFonts.plusJakartaSans(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle plusJakartaSans24BoldblackColor =
      GoogleFonts.plusJakartaSans(
    color: AppColors.blackColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle plusJakartaSans14normalsecGreyColor =
      GoogleFonts.plusJakartaSans(
    color: AppColors.secGreyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle plusJakartaSans14mediumblackColor =
      GoogleFonts.plusJakartaSans(
    color: AppColors.blackColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
}
