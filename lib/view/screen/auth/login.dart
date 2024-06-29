import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/core/functions/validate_input.dart';
import 'package:e_commerce/view/widget/auth/custombodyauth.dart';
import 'package:e_commerce/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce/view/widget/auth/customtextbutton.dart';
import 'package:e_commerce/view/widget/auth/customtextfield.dart';
import 'package:e_commerce/view/widget/auth/customtitleauth.dart';
import 'package:e_commerce/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign In".tr,
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColor.primaryColor),
        ),
        backgroundColor: AppColor.background,
        elevation: 0.0,
      ),
      body: GetBuilder<LoginControllerImp>(builder: (controller) {
        return Container(
          color: AppColor.background,
          padding: const EdgeInsets.all(30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                LogoAuth(),
                SizedBox(
                  height: 20,
                ),
                CustomTitleAuth(
                  title: "Welcome Back".tr,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomBodyAuth(body: "Sign In body"),
                SizedBox(
                  height: 50,
                ),
                CustomTextFormField(
                  validator: (val) {
                    return validateInput(val!, 5, 255, "email");
                  },
                  controller: controller.email,
                  icon: Icons.mail_outline,
                  label: "email".tr,
                  hint: "Enter Your Email".tr,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormField(
                    iconOnTap: () {
                      controller.showPassword();
                      print(controller.obscure);
                    },
                    obscure: controller.obscure,
                    controller: controller.password,
                    icon: controller.obscure == false
                        ? Icons.visibility
                        : Icons.visibility_off,
                    label: "Password".tr,
                    hint: "Enter Your password".tr,
                  ),
                ),
                InkWell(
                  onTap: () => controller.goToForgetPassword(),
                  child: Text(
                    "Forget your password?".tr,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                CustomButtonAuth(
                  text: "Sign In".tr,
                  onPressed: () {
                    controller.login();
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an acount? ".tr),
                    CustomTextButtonAuth(
                      text: "Sign Up".tr,
                      onTap: () => controller.goToSignUp(),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
