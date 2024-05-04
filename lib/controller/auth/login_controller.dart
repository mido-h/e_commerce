import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/remote/auth/login_remote.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  StatusRequest? statusRequest;
  LoginRemote loginRemote = LoginRemote(Get.find());
  MyServices myServices = Get.find();

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginRemote.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences
              .setInt("id", response['data']['user_id']);
          myServices.sharedPreferences
              .setString("username", response['data']['user_name']);
          myServices.sharedPreferences
              .setString("email", response['data']['user_email']);
          myServices.sharedPreferences
              .setInt("phone", response['data']['user_phone']);
          myServices.sharedPreferences.setString("step", '2');
          Get.offNamed(
            AppRoute.homePage,
          );
        } else {
          Get.defaultDialog(
              title: "Warning",
              content: const Text("Wrong user name or password"));
          statusRequest = StatusRequest.failure;
        }
      } else {
        Get.defaultDialog(
            title: "Warning", content: const Text("Connection error"));
        statusRequest = StatusRequest.failure;
      }
      update();
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
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
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
    Get.toNamed(AppRoute.checkEmail);
    Get.delete<LoginControllerImp>();
  }

  @override
  showPassword() {
    obscure = !obscure;
    update();
  }
}
