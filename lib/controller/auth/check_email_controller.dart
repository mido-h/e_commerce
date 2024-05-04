import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/data/datasource/remote/auth/check_email_remote.dart';
import 'package:e_commerce/view/screen/auth/forget_password/check_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToverifyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  CheckRemote checkRemote = CheckRemote(Get.find());
  @override
  checkEmail() {}
  @override
  goToverifyCode() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkRemote.postData(email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoute.verifyCode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              content: const Text("The email is not present"));
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
