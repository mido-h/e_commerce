import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/view/screen/language.dart';
import 'package:e_commerce/view/screen/login.dart';
import 'package:e_commerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.language: (context) => const Language(),
  AppRoute.onBoarding: (context) => const OnBoarding()
};
