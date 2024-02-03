import 'package:e_commerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
