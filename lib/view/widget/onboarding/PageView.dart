import 'package:e_commerce/controller/onboardingcontroller.dart';
import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomPageViewOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomPageViewOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        controller: controller.pageController,
        itemCount: onboardinglist.length,
        itemBuilder: (context, i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(onboardinglist[i].title!,
                  style: Theme.of(context).textTheme.bodyLarge),
              Image.asset(
                onboardinglist[i].image!,
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fill,
              ),
              Text(onboardinglist[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          );
        });
  }
}
