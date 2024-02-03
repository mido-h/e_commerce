import 'package:e_commerce/controller/auth/VerifyCode_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/view/widget/auth/custombodyauth.dart';
import 'package:e_commerce/view/widget/auth/customtitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Verification Code",
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
              CustomTitleAuth(
                title: 'Check Code',
              ),
              SizedBox(
                height: 20,
              ),
              CustomBodyAuth(
                  body: "Please Enter The Digit Code Sent To Your Email"),
              SizedBox(
                height: 50,
              ),
              OtpTextField(
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
            ],
          ),
        ));
  }
}
