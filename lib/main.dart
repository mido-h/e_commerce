import 'package:e_commerce/binding.dart';
import 'package:e_commerce/core/localization/changelocal.dart';
import 'package:e_commerce/core/localization/translation.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/view/screen/language.dart';
import 'package:e_commerce/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final LangController langcontroller = Get.put(LangController());
  final MyServices myServices = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo e-commerce app',
      translations: MyTranslation(),
      locale: langcontroller.language,
      theme: langcontroller.appTheme,
      // myServices.sharedPreferences.get("lang") == null
      //     ? const Language()
      //     : const Login(),
      // routes: routes,
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
