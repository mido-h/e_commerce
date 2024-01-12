import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/localization/changelocal.dart';
import 'package:e_commerce/view/widget/Language/langbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LangController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            CustomButtonLang(
              buttonText: "Arabic",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtonLang(
              buttonText: "English",
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            )
          ],
        ),
      ),
    );
  }
}
