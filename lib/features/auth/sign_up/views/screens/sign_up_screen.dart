import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/widgets/head_of_screen_of_auth_widgets.dart';

import '../../../../../core/routes/routes.dart';
import '../widgets/body_of_signup_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadOfScreenOfAuthWidgets(
              textOne: 'Sign up',
              textTwo: 'Log In',
              screen: Routes.logIn,
            ),
            SizedBox(height: 30.h),
            const BodyOfSignupScreen()
          ],
        ),
      ),
    )));
  }
}
