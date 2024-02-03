import 'package:e_commerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  bool obscure = true;
  @override
  login() {
    if (formstate.currentState!.validate()) {
      print("valid");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
    Get.delete<LoginControllerImp>();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();

    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  showPassword() {
    obscure = !obscure;
    update();
  }
}
