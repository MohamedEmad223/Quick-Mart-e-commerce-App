import 'package:flutter/material.dart';
import 'package:quick_mart/core/routes/app_routes.dart';
import 'package:quick_mart/core/routes/routes.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key, required this.appRoutes});

  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoarding,
      onGenerateRoute: appRoutes.onGenerateRoute,
    );
  }
}
