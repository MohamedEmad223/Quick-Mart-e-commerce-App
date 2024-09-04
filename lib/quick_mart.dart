import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/app_routes.dart';
import 'package:quick_mart/core/routes/routes.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key, required this.appRoutes});

  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: appRoutes.onGenerateRoute,
      ),
    );
  }
}
