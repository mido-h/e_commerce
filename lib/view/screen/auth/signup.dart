import 'package:e_commerce/controller/auth/signup_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/core/functions/validate_input.dart';
import 'package:e_commerce/view/widget/auth/custombodyauth.dart';
import 'package:e_commerce/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce/view/widget/auth/customtextbutton.dart';
import 'package:e_commerce/view/widget/auth/customtextfield.dart';
import 'package:e_commerce/view/widget/auth/customtitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign UP",
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
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomTitleAuth(
                title: 'Welcome Back',
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
                  return validateInput(val!, 5, 255, "username");
                },
                controller: controller.username,
                icon: Icons.person_2_outlined,
                label: "User",
                hint: "Enter Your User Name",
              ),
              CustomTextFormField(
                validator: (val) {
                  return validateInput(val!, 5, 255, "email");
                },
                controller: controller.email,
                icon: Icons.mail_outline,
                label: "email",
                hint: "Enter Your Email",
              ),
              CustomTextFormField(
                validator: (val) {
                  return validateInput(val!, 5, 255, "phone");
                },
                controller: controller.phone,
                icon: Icons.phone_android_outlined,
                label: "Phone",
                hint: "Enter Your Phone Number",
              ),
              CustomTextFormField(
                controller: controller.password,
                icon: Icons.lock_outline,
                label: "Password",
                hint: "Enter Your password",
                validator: (val) {
                  return "void";
                },
              ),
              CustomButtonAuth(
                text: "Register",
                onPressed: () => controller.signUp(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an acount ? "),
                  CustomTextButtonAuth(
                    text: " Sign In",
                    onTap: () => controller.goToLogin(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
