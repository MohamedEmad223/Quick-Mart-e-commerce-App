import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.mainColor,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.mainColor),
              gapPadding: BorderSide.strokeAlignCenter,
              borderRadius: BorderRadius.all(
                Radius.circular(15.r),
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.greyColor),
              gapPadding: BorderSide.strokeAlignCenter,
              borderRadius: BorderRadius.all(
                Radius.circular(15.r),
              ),
            ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.greyColor,
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ??
          const TextStyle(
            color: AppColors.mainColor,
          ),
    );
  }
}
