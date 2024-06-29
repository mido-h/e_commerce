import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/data/datasource/remote/auth/verifycode_signup_remote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(verifycode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifycodeRemote verifycodeRemote = VerifycodeRemote(Get.find());
  String? email;
  StatusRequest? statusRequest;
  @override
  checkCode() {}
  @override
  goToSuccessSignUp(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifycodeRemote.postData(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning", content: const Text("Verify code is incorrect"));
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
