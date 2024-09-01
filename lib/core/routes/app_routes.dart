import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/on_boarding/on_boarding_screen.dart';

import '../../features/home/home_screen.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
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
