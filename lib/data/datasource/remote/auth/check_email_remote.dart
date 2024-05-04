import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class CheckRemote {
  Crud crud;
  CheckRemote(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLink.checkEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
