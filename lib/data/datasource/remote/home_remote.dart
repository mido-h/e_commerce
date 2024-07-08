import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class HomeRemote {
  Crud crud;
  HomeRemote(this.crud);
  postData(String userId) async {
    var response =
        await crud.postData(AppLink.homepage, {"user_id": userId.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
