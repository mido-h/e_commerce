import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/core/functions/validate_input.dart';
import 'package:e_commerce/view/widget/auth/custombodyauth.dart';
import 'package:e_commerce/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce/view/widget/auth/customtextfield.dart';
import 'package:e_commerce/view/widget/auth/customtitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/check_email_controller.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Forget Password",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.primaryColor),
          ),
          backgroundColor: AppColor.background,
          elevation: 0.0,
        ),
        body: GetBuilder<CheckEmailControllerImp>(builder: (controller) {
          return Container(
            color: AppColor.background,
            padding: const EdgeInsets.all(30),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CustomTitleAuth(
                    title: 'Check Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomBodyAuth(body: "Sign In body"),
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextFormField(
                    validator: (val) => validateInput(val!, 5, 255, "email"),
                    controller: controller.email,
                    icon: Icons.mail_outline,
                    label: "email",
                    hint: "Enter Your Email",
                  ),
                  CustomButtonAuth(
                    text: "Ckeck",
                    onPressed: () => controller.goToverifyCode(),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
