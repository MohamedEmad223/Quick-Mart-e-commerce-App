import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Ensure the length is 2, as there are 2 tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Order History',
            style: AppTextStyle.plusJakartaSans14mediumblackColor,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.threeGrey,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ongoing",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Completed",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // First tab content
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('On Going'),
                ],
              ),
            ),
            // Second tab content
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/01 Online Shopping 2.png'),
                  Text(
                    'No completed order',
                    style: AppTextStyle.plusJakartaSans16BoldMainColor
                        .copyWith(color: AppColors.blackColor, fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'We don\'t have any past orders that have been completed.completed. Start shopping now and create your first order with us.',
                    style: AppTextStyle.plusJakartaSans14mediumlsecGreyColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
