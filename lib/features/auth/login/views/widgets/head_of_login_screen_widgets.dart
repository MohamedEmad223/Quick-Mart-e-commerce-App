import 'package:flutter/material.dart';
import '../../../../../core/widgets/head_of_screen_of_auth_widgets.dart';
import '../../../sign_up/views/screens/sign_up_screen.dart';

class HeadOfLoginScreenWidgets extends StatelessWidget {
  const HeadOfLoginScreenWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeadOfScreenOfAuthWidgets(
      textOne: 'Log In',
      textTwo: 'Sign up',
      screen: SignUpScreen(),
    );
  }
}
