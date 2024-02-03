import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int i);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  next() {
    if (currentPage < onboardinglist.length - 1) {
      currentPage++;
    } else {
      Get.offAllNamed(AppRoute.login);
      myServices.sharedPreferences.setBool("Onboarding", true);
      print(myServices.sharedPreferences.get("Onboarding").toString());
    }

    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    update();
  }

  @override
  onPageChanged(int i) {
    currentPage = i;
    update();
  }
}
