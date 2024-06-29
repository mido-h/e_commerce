import 'package:e_commerce/controller/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsCategories extends GetView<ItemsControllerImp> {
  const ItemsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return GetBuilder<ItemsControllerImp>(builder: (controller) {
      return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          height: 35,
          child: ListView.builder(
              itemCount: controller.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.changeCategory(index);
                  },
                  child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 7),
                      decoration: BoxDecoration(
                          color: controller.selectedCategory == index+1
                              ? Colors.orange[500]
                              : Colors.orange[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        controller.categories[index]["category_name_EN"],
                        style: TextStyle(fontSize: 20),
                      )),
                );
              }));
    });
  }
}
