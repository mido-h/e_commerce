import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/remote/home_remote.dart';
import 'package:e_commerce/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initialData();
  //getData();
  // toCategories(int selectedCategory);
  goToItemsDetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends ItemsController {
  MyServices myServices = Get.find();
  String? username;
  // HomeRemote homeRemote = HomeRemote(Get.find());
  List categories = [];
  List items = [];
  late int selectedCategory;
  late StatusRequest statusRequest;
  // late ItemsModel itemsModel;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    selectedCategory = Get.arguments["selected category"];
    categories = Get.arguments["categories"];
    items = Get.arguments["items"];
  }

  changeCategory(i) {
    selectedCategory = i;
    update();
  }

  @override
  goToItemsDetails(itemsModel) {
    Get.toNamed(AppRoute.itemsDetails, arguments: {"itemsmodel": itemsModel});
  }

  @override
  // getData() async {
  //   statusRequest = StatusRequest.loading;
  //   var response = await homeRemote.postData();
  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       categories.addAll(response['categories']);
  //       items.addAll(response['items']);
  //     } else {
  //       statusRequest = StatusRequest.failure;
  //     }
  //   }

  //   update();
  // }

  @override
  void onInit() {
    initialData();
    // getData();
    super.onInit();
  }
}
