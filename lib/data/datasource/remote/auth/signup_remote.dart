import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class SignUpAddDataRemote {
  Crud crud;
  SignUpAddDataRemote(this.crud);
  postData(String username, String email, String password, String phone) async {
    var response = await crud.postData(AppLink.signup, {
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
