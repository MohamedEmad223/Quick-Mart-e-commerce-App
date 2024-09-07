// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:quick_mart/core/routes/routes.dart';
// import 'package:quick_mart/core/theming/app_colors.dart';
// import 'package:quick_mart/features/auth/forget_password/views/widgets/head_of_forget_password_widgets.dart';

// import '../../../../../core/theming/app_text_style.dart';
// import '../../../../../core/widgets/custom_button.dart';
// import '../../../../../core/widgets/custom_text_form_feild.dart';
// import '../../../login/views/widgets/lable_text.dart';

// class CreatePasswordScreen extends StatefulWidget {
//   const CreatePasswordScreen({super.key});

//   @override
//   State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
// }

// class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
//   bool _isObscureone = true;
//   bool _isObscuretwo = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//           child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const HeadOfForgetPasswordWidgets(
//                 textOne: 'New Password',
//                 textTwo: 'Enter your new password and remember it.'),
//             SizedBox(height: 20.h),
//             const LableText(
//               lableText: 'Password',
//             ),
//             SizedBox(height: 20.h),
//             CustomTextFormFeild(
//               isObscureText: _isObscureone,
//               hintText: 'Enter your Password',
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _isObscureone = !_isObscureone;
//                   });
//                 },
//                 child: _isObscureone
//                     ? const Icon(Icons.visibility_off)
//                     : const Icon(Icons.visibility),
//               ),
//             ),
//             SizedBox(height: 20.h),
//             const LableText(
//               lableText: 'Confirm Password',
//             ),
//             SizedBox(height: 20.h),
//             CustomTextFormFeild(
//               isObscureText: _isObscuretwo,
//               hintText: 'Enter your Confirm Password',
//               suffixIcon: GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _isObscuretwo = !_isObscuretwo;
//                   });
//                 },
//                 child: _isObscuretwo
//                     ? const Icon(Icons.visibility_off)
//                     : const Icon(Icons.visibility),
//               ),
//             ),
//             SizedBox(height: 40.h),
//             CustomButton(
//               buttonStyle: AppTextStyle.plusJakartaSans16BoldWhite,
//               height: 50.h,
//               color: AppColors.blackColor,
//               buttonText: 'Save',
//               buttonAction: () {
//                 Navigator.pushReplacementNamed(context, Routes.success);
//               },
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
