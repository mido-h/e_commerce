import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/data/datasource/remote/auth/verifycode_reset_password_remote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword(verifyCode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VerifycodeResetPasswordRemote verifycodeResetPasswordRemote =
      VerifycodeResetPasswordRemote(Get.find());

  StatusRequest? statusRequest;
  String? email;

  @override
  goToResetPassword(verifyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifycodeResetPasswordRemote.postData(email!, verifyCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.resetPassword, arguments: {"email2": email});
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
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
