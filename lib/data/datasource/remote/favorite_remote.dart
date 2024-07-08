import 'package:e_commerce/core/class/crud.dart';
import 'package:e_commerce/link_api.dart';

class FavoriteRemote {
  Crud crud;
  FavoriteRemote(this.crud);
  postData(int userId, int itemId) async {
    var response = await crud.postData(AppLink.favorite, {
      "favorite_user_id": userId.toString(),
      "favorite_item_id": itemId.toString(),
    });

    return response.fold((l) => l, (r) => r);
  }
}
