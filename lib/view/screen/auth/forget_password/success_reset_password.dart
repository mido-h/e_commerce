import 'package:e_commerce/controller/auth/success_password_reset_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/view/widget/auth/custombuttonauth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  SuccessResetPassword({super.key});
  final SuccessPasswordResetControllerImp controller =
      Get.put(SuccessPasswordResetControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Success Reset Password",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primaryColor),
          ),
          backgroundColor: AppColor.background,
          elevation: 0.0,
        ),
        body: Container(
          color: AppColor.background,
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Icon(
                Icons.check_circle_outline,
                size: 150,
                color: Colors.green,
              ),
              Text(
                "Congratulation",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              CustomButtonAuth(
                  text: "Go To Login", onPressed: () => controller.goToLogin()),
            ],
          ),
        ));
  }
}
