import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class VerifycodeResetPasswordRemote {
  Crud crud;
  VerifycodeResetPasswordRemote(this.crud);
  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycodeForgetPassword, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
