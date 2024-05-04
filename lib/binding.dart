import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/controller/auth/signup_controller.dart';
import 'package:e_commerce/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Crud());
  }
}
