import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class ResetPasswordRemote {
  Crud crud;
  ResetPasswordRemote(this.crud);
  postData(String email, String password) async {
    var response = await crud.postData(AppLink.resetPassword, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
