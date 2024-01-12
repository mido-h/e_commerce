import 'package:e_commerce/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        controller.next();
      },
      color: Colors.blue,
      textColor: Colors.white,
      child: const Text("Next"),
    );
  }
}
