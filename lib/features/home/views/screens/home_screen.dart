import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/lable_row.dart';
import '../widgets/row_of_home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
          child: Column(
            children: [
              const RowOfHomeScreen(),
              SizedBox(height: 20.h),
              Image.asset('assets/images/Rectangle 6.png'),
              SizedBox(height: 20.h),
              const LableRow(
                lable: 'Categories',
                seeAll: 'See all',
              )
            ],
          ),
        ),
      ),
    );
  }
}
