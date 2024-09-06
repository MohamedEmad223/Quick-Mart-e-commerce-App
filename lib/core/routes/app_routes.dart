import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/auth/forget_password/views/screens/success_screen.dart';
import 'package:quick_mart/features/auth/login/views/screens/log_in_screen.dart';
import 'package:quick_mart/features/auth/sign_up/views/screens/sign_up_screen.dart';
import 'package:quick_mart/features/on_boarding/view/screen/on_boarding_screen.dart';

import '../../features/home/home_screen.dart';
import '../../features/splash/screens/splash_screen.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.logIn:
        return MaterialPageRoute(builder: (context) => const LogInScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.success:
        return MaterialPageRoute(builder: (context) => const SuccessScreen());
      default:
        return null;
    }
  }
}
