import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class ItemsRemote {
  Crud crud;
  ItemsRemote(this.crud);
  postData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
}
