import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/on_boarding/on_boarding_screen.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      default:
        return null;
    }
  }
}
