import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class VerifycodeRemote {
  Crud crud;
  VerifycodeRemote(this.crud);
  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycode, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
