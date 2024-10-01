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
        theme: lightTheme, // Set initial theme to lightTheme
        darkTheme: darkTheme,
        themeMode: ThemeMode.system, // Set to ThemeMode.dark for default dark mode
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.botNavBar,
        onGenerateRoute: AppRoutes().onGenerateRoute,
      ),
    );
  }
}


 final  lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0,
    color: Colors.white,
    surfaceTintColor: Colors.white,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.mainColor,
      size: 28,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
  // Define other light theme attributes as needed
);


final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0,
    color: Colors.black, // Example color for dark theme app bar
    surfaceTintColor: Colors.black,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.mainColor,
      size: 28,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.black, // Example color for dark theme background
  // Define other dark theme attributes as needed
);

