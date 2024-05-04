import 'package:e_commerce/controller/auth/resetpassword_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/core/functions/validate_input.dart';
import 'package:e_commerce/view/widget/auth/custombodyauth.dart';
import 'package:e_commerce/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce/view/widget/auth/customtextfield.dart';
import 'package:e_commerce/view/widget/auth/customtitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Reset Password",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primaryColor),
          ),
          backgroundColor: AppColor.background,
          elevation: 0.0,
        ),
        body: GetBuilder<ResetPasswordControllerImp>(builder: (controller) {
          return Form(
            key: controller.formstate,
            child: Container(
              color: AppColor.background,
              padding: const EdgeInsets.all(30),
              child: ListView(
                children: [
                  CustomTitleAuth(
                    title: 'Reset password',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomBodyAuth(body: "Enter your new password"),
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField(
                    validator: (val) {
                      return validateInput(val!, 5, 255, "");
                    },
                    controller: controller.password,
                    icon: Icons.mail_outline,
                    label: "Password",
                    hint: "Enter Your New Password",
                  ),
                  CustomTextFormField(
                    validator: (val) {
                      return validateInput(val!, 5, 255, "");
                    },
                    controller: controller.repassword,
                    icon: Icons.mail_outline,
                    label: "Password",
                    hint: "Re-Enter Your New Password",
                  ),
                  CustomButtonAuth(
                    text: "Reset",
                    onPressed: () => controller.goToSuccessPasswordReset(),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
