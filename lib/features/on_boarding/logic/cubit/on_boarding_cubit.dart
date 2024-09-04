import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quick_mart/core/helpers/app_images.dart';
import 'package:quick_mart/core/helpers/app_text.dart';

import '../../data/on_boarding_model.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  List<OnBoardingModel> onBoardingList = <OnBoardingModel>[
    OnBoardingModel(
        title: AppText.onBoardingtextOne,
        description: AppText.onBoardingDescriptionOne,
        image: AppImages.onboarding1),
    OnBoardingModel(
        title: AppText.onBoardingtextTwo,
        description: AppText.onBoardingDescriptionTwo,
        image: AppImages.onboarding2),
    OnBoardingModel(
        title: AppText.onBoardingtextThree,
        description: AppText.onBoardingDescriptionThree,
        image: AppImages.onboarding3),
  ];

  PageController pageController = PageController(initialPage: 0);

  int currentIndex = 0;
  changePage(int index) {
    currentIndex = index;
    emit(NextState());
  }

  transition() {
    if (currentIndex >= onBoardingList.length - 1) {
      emit(GoHomeState());
    } else {
      currentIndex++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate);
      emit(NextState());
    }
  }
}
