import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? priority = 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.get("Onboarding") == true) {
      if (myServices.sharedPreferences.get("step") == "2") {
        return RouteSettings(name: AppRoute.homePage);
      } else {
        return RouteSettings(name: AppRoute.login);
      }
    } else {
      return RouteSettings(name: AppRoute.onBoarding);
    }

    //     if (myServices.sharedPreferences.get("Onboarding") == true) {
    //   return RouteSettings(name: AppRoute.login);
    // } else {
    //   return RouteSettings(name: AppRoute.onBoarding);
    // }
  }
}
