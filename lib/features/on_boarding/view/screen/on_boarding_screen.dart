import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/on_boarding/logic/cubit/on_boarding_cubit.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_style.dart';
import '../../../../core/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBoardingCubit>(
      create: (context) => OnBoardingCubit(),
      child: Scaffold(
        body: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GoHomeState) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                Navigator.of(context).pushReplacementNamed(Routes.home);
              });
            }
            final onBoarding = context.watch<OnBoardingCubit>();
            return Scaffold(
              appBar: AppBar(),
              body: SafeArea(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  child: SvgPicture.asset(
                                    'assets/svgs/on_boarding/quickmart.svg',
                                    width: 100.w,
                                    height: 30.h,
                                  ),
                                ),
                                if (onBoarding.currentIndex !=
                                    onBoarding.onBoardingList.length - 1)
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  Routes.logIn);
                                        },
                                        child: const Text(
                                          'Skip For Now',
                                          style: TextStyle(
                                            color: AppColors.mainColor,
                                            fontSize: 16,
                                          ),
                                        )),
                                  )
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: PageView.builder(
                              controller: onBoarding.pageController,
                              onPageChanged: (page) {
                                context
                                    .read<OnBoardingCubit>()
                                    .changePage(page);
                              },
                              itemCount: onBoarding.onBoardingList.length,
                              itemBuilder: (context, i) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Image.asset(
                                          onBoarding.onBoardingList[i].image,
                                          width: 250.w,
                                          height: 50.h,
                                        )),
                                        Text(
                                          onBoarding.onBoardingList[i].title,
                                          style: AppTextStyle.cairo24BoldWhite,
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          onBoarding
                                              .onBoardingList[i].description,
                                          style: AppTextStyle
                                              .cairo14normalsecGreyColor,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                                onBoarding.onBoardingList.length,
                                (index) => AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                      width: index == onBoarding.currentIndex
                                          ? 10
                                          : 8,
                                      height: 8,
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: index == onBoarding.currentIndex
                                            ? AppColors.mainColor
                                            : AppColors.greyColor,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 50, top: 22),
                          child: CustomButton(
                            height: 60.h,
                            buttonStyle: AppTextStyle.cairo16BoldWhite,
                            color: AppColors.blackColor,
                            buttonText: onBoarding.currentIndex ==
                                    onBoarding.onBoardingList.length - 1
                                ? 'Start'
                                : 'Next',
                            buttonAction: () {
                              if (onBoarding.currentIndex ==
                                  onBoarding.onBoardingList.length - 1) {
                                Navigator.of(context)
                                    .pushReplacementNamed(Routes.logIn);
                              }
                              context.read<OnBoardingCubit>().transition();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
