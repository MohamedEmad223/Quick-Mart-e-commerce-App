import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/app_routes.dart';
import 'package:quick_mart/core/routes/routes.dart';

import 'core/theming/app_colors.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        theme: ThemeData(
          
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            scrolledUnderElevation: 0,
            iconTheme: IconThemeData(
              color: AppColors.mainColor,
              size: 28.r,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: AppRoutes().onGenerateRoute,
      ),
    );
  }
}
