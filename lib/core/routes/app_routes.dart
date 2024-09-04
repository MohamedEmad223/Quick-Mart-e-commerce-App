import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/on_boarding/screen/on_boarding_screen.dart';

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
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return null;
    }
  }
}
