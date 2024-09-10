import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/auth/sign_up/views/screens/sign_up_screen.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/head_of_screen_of_auth_widgets.dart';
import '../widgets/login_body.dart';
import '../widgets/term_text.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               HeadOfScreenOfAuthWidgets(
                textOne: 'Log In',
                textTwo: 'Sign up',
                screen: Routes.signUp,
              ),
              SizedBox(height: 40.h),
              const LoginBody(),
              SizedBox(height: 50.h),
              const TermsTexts()
            ],
          ),
        ),
      ),
    ));
  }
}
