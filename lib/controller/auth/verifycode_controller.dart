import 'package:e_commerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  @override
  checkCode() {}
  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
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
