import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/home/views/screens/home_screen.dart';
import '../theming/app_colors.dart';




class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const DietsScreen(),
      const WorkOutScreen(),
      const SettingsScreen(),
    ];
    var botNavCubit = BlocProvider.of<BotnavbarCubit>(context);
    return BlocBuilder<BotNavBarCubit, BotNavBarState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          body: pages[botNavCubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
            ),
            height: 67.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                elevation: 0.0,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 0
                        ? SvgPicture.asset(Assets.svgsResultsHomeiconselected)
                        : SvgPicture.asset(Assets.svgsResultsHomeicon),
                    label: 'النتائج',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 1
                        ? SvgPicture.asset(Assets.svgsResultsTableSelected)
                        : SvgPicture.asset(Assets.svgsResultsTable),
                    label: 'الوجبات',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 2
                        ? SvgPicture.asset(Assets.svgsResultsWeightSelected)
                        : SvgPicture.asset(Assets.svgsResultsWeightlift),
                    label: 'التمارين',
                  ),
                  BottomNavigationBarItem(
                    icon: botNavCubit.currentIndex == 3
                        ? SvgPicture.asset(Assets.svgsResultsSettingsSelected)
                        : SvgPicture.asset(Assets.svgsResultsSettings),
                    label: 'الاعدادات',
                  ),
                ],
                currentIndex: botNavCubit.currentIndex,
                selectedItemColor: AppColors.mainColor,
                unselectedItemColor: Colors.black,
                unselectedLabelStyle:
                    AppTextStyles.cairosemibold14maincolor.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
                selectedLabelStyle:
                    AppTextStyles.cairosemibold14maincolor.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
                onTap: (value) {
                  botNavCubit.changeIndex(value);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
