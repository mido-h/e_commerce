import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/data/datasource/remote/auth/reset_password_remote.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessPasswordReset();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  StatusRequest? statusRequest;
  ResetPasswordRemote resetPasswordRemote = ResetPasswordRemote(Get.find());
  String? email;
  @override
  resetPassword() {}
  @override
  goToSuccessPasswordReset() async {
    if (formstate.currentState!.validate()) {
      if (password.text == repassword.text) {
        print("here");

        statusRequest = StatusRequest.loading;
        update();
        var response =
            await resetPasswordRemote.postData(email!, password.text);
        statusRequest = handlingData(response);
        if (StatusRequest.success == statusRequest) {
          if (response['status'] == "success") {
            Get.toNamed(AppRoute.successResetPassword);
          } else {
            Get.defaultDialog(
                title: "Warning",
                content: const Text("The email is not present"));
            statusRequest = StatusRequest.failure;
          }
        }

        update();
      } else {
        Get.defaultDialog(
            title: "Warning",
            content: const Text("The two password is not equal"));
      }
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments['email2'];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
}
