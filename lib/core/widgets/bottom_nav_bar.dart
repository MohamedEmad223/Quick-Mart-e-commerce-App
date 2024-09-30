import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/helpers/app_images.dart';
import 'package:quick_mart/features/cart/cart_screen.dart';
import 'package:quick_mart/features/categories/categories_screen.dart';
import 'package:quick_mart/features/settings/views/screens/profile_screen.dart';
import 'package:quick_mart/features/whislist/wishlist_screen.dart';

import '../../features/home/logic/botnavbar/cubit/botnavbar_cubit.dart';
import '../../features/home/views/screens/home_screen.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_style.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const WishlistScreen(),
      const ProfileScreen(),
    ];

    var botNavCubit = BlocProvider.of<BotnavbarCubit>(context);
    return BlocBuilder<BotnavbarCubit, BotnavbarState>(
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
                    icon: SvgPicture.asset(AppImages.homeLogo,
                        color: botNavCubit.currentIndex == 0
                            ? AppColors.mainColor
                            : Colors.grey),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.categoriesLogo,
                        color: botNavCubit.currentIndex == 1
                            ? AppColors.mainColor
                            : Colors.grey),
                    label: 'Categories',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.cartLogo,
                        color: botNavCubit.currentIndex == 2
                            ? AppColors.mainColor
                            : Colors.grey),
                    label: 'My Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.wishlistLogo,
                        color: botNavCubit.currentIndex == 3
                            ? AppColors.mainColor
                            : Colors.grey),
                    label: 'Wishlist',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.profileLogo,
                        color: botNavCubit.currentIndex == 4
                            ? AppColors.mainColor
                            : Colors.grey),
                    label: 'Profile',
                  ),
                ],
                currentIndex: botNavCubit.currentIndex,
                selectedItemColor: AppColors.mainColor,
                unselectedItemColor: Colors.grey,
                unselectedLabelStyle:
                    AppTextStyle.plusJakartaSans13blackColor.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
                selectedLabelStyle:
                    AppTextStyle.plusJakartaSans14mediummainColor.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
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
