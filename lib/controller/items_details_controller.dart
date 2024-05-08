import 'package:e_commerce/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsController extends GetxController {}

class ItemsDetailsControllerImp extends ItemsDetailsController {
  late ItemsModel itemsModel;

  initData() {
    itemsModel = Get.arguments["itemsmodel"];
  }

  @override
  void onInit() {
    initData();
    super.onInit();
  }
}
