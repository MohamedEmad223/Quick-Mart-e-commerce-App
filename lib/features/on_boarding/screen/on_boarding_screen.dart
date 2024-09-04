import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/on_boarding/logic/cubit/on_boarding_cubit.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_style.dart';
import '../../../core/widgets/custom_border_button.dart';
import '../../../core/widgets/custom_button.dart';

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
                                        )
                                      ],
                                    ),
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                                onBoarding.onBoardingList.length,
                                (index) => AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.bounceInOut,
                                      width: index == onBoarding.currentIndex
                                          ? 18
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
                              left: 30, right: 30, bottom: 15, top: 22),
                          child: CustomButton(
                            buttonStyle: AppTextStyle.cairo16BoldWhite,
                            color: AppColors.mainColor,
                            buttonText: onBoarding.currentIndex ==
                                    onBoarding.onBoardingList.length - 1
                                ? 'أبدأ'
                                : 'التالى',
                            buttonAction: () {
                              context.read<OnBoardingCubit>().transition();
                            },
                          ),
                        ),
                        onBoarding.currentIndex ==
                                onBoarding.onBoardingList.length - 1
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 35),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 35.h,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 35),
                                child: CustomBorderButton(
                                  buttonText: 'أبدأ',
                                  buttonStyle:
                                      AppTextStyle.cairo16BoldMainColor,
                                  buttonAction: () {
                                    WidgetsBinding.instance
                                        .addPostFrameCallback((timeStamp) {
                                      Navigator.of(context)
                                          .pushReplacementNamed(Routes.home);
                                    });
                                  },
                                ),
                              )
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
