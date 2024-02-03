import 'package:e_commerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessPasswordResetController extends GetxController {
  goToLogin();
}

class SuccessPasswordResetControllerImp extends SuccessPasswordResetController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
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
