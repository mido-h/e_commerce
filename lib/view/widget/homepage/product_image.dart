import 'package:e_commerce/controller/items_details_controller.dart';
import 'package:e_commerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImageItemsDetails extends StatelessWidget {
  const ProductImageItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsControllerImp itemsDetailsController =
        Get.put(ItemsDetailsControllerImp());
    return Stack(
      children: [
        Hero(
          tag: "${itemsDetailsController.itemsModel.itemId}",
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            width: Get.width / 1.5,
            height: Get.height / 2.5,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15)),
            child: Image.network(
              "${AppLink.imagesItems}${itemsDetailsController.itemsModel.itemImage}",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
