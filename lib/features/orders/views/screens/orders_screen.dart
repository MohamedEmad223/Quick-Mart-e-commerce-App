import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import '../widgets/on_complete_tab_bar_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Order History',
            style: AppTextStyle.plusJakartaSans14mediumblackColor,
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize:  Size.fromHeight(60.h),
            child: ClipRRect(
              borderRadius:  BorderRadius.all(Radius.circular(10.r)),
              child: Container(
                height: 40.h,
                margin:  EdgeInsets.symmetric(horizontal: 20.h),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  color: AppColors.threeGrey,
                ),
                child:  TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: AppColors.blackColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: const[
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
        body: const TabBarView(
          children: [
            // First tab content
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('On Going'),
                ],
              ),
            ),
            // Second tab content
            OnCompleteTabBarWidget()
          ],
        ),
      ),
    );
  }
}
