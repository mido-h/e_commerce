import 'package:e_commerce/core/class/status_request.dart';
import 'package:e_commerce/core/constant/routes.dart';
import 'package:e_commerce/core/functions/handlingdata_controller.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/remote/favorite_remote.dart';
import 'package:e_commerce/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initialData();
  //getData();
  // toCategories(int selectedCategory);
  goToItemsDetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends ItemsController {
  MyServices myServices = Get.find();
  FavoriteRemote favoriteRemote = FavoriteRemote(Get.find());
  String? username;
  int? userId;
  // HomeRemote homeRemote = HomeRemote(Get.find());
  List categories = [];
  List items = [];
  List favorite = [];
  List vesibleitems = [];
  List favoriteID = [];

  late int selectedCategory;
  late StatusRequest statusRequest;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userId = myServices.sharedPreferences.getInt("id");
    selectedCategory = Get.arguments["selected category"];
    categories = Get.arguments["categories"];
    items = Get.arguments["items"];
    vesibleitems = [];
    for (Map x in items) {
      if (x["item_category"] == selectedCategory) {
        vesibleitems.add(x);
      }
    }
  }

  changeCategory(i) {
    selectedCategory = i + 1;
    vesibleitems = [];

    for (Map x in items) {
      if (x["item_category"] == selectedCategory) {
        vesibleitems.add(x);
      }
    }
    update();
  }

  @override
  goToItemsDetails(itemsModel) {
    Get.toNamed(AppRoute.itemsDetails, arguments: {"itemsmodel": itemsModel});
  }

  changeFavorite(itemId) async {
    var response = await favoriteRemote.postData(userId!, itemId);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        for (Map x in vesibleitems) {
          if (x["item_id"] == itemId) {
            if (x["favorite"] == 1) {
              x["favorite"] = 0;
              Get.snackbar(
                  "warning",
                  snackPosition: SnackPosition.BOTTOM,
                  "The items was removed from the favorite successfully");
            } else {
              x["favorite"] = 1;
              Get.snackbar(
                  "warning",
                  snackPosition: SnackPosition.BOTTOM,
                  "The items was added to the favorite successfully");
            }
          }
        }
      } else {
        Get.defaultDialog(
            title: "Warning", content: const Text("An error was happened"));
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    initialData();
    // getData();
    super.onInit();
  }
}
