import 'package:e_commerce/controller/onboardingcontroller.dart';
import 'package:e_commerce/view/widget/onboarding/PageView.dart';
import 'package:e_commerce/view/widget/onboarding/custombutton.dart';
import 'package:e_commerce/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(flex: 5, child: CustomPageViewOnBoarding()),
          Expanded(
              flex: 1,
              child: Column(
                children: [DotControllerOnBoarding(), CustomButtonOnBoarding()],
              ))
        ],
      ),
    ));
  }
}
