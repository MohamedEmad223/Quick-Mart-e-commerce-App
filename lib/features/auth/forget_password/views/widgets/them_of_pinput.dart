import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:quick_mart/core/theming/app_colors.dart';

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.mainColor),
    borderRadius: BorderRadius.circular(20),
  ),
);
