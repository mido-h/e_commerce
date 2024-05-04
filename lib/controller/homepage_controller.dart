import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/remote/home_remote.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  initialData();
  getData();
  toItems(int selectedCategory);
}

class HomePageControllerImp extends HomePageController {
  MyServices myServices = Get.find();
  String? username;
  HomeRemote homeRemote = HomeRemote(Get.find());
  List categories = [];
  List items = [];
  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeRemote.postData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  toItems(int selectedCategory) {
    Get.toNamed(AppRoute.items, arguments: {
      "categories": categories,
      "items": items,
      "selected category": selectedCategory
    });
  }

  @override
  void onInit() {
    initialData();
    getData();
    super.onInit();
  }
}
