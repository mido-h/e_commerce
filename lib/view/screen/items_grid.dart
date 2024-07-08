import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/data/model/items_model.dart';
import 'package:e_commerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsGrid extends StatelessWidget {
  const ItemsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp itemsControllerImp = Get.put(ItemsControllerImp());
    return GetBuilder<ItemsControllerImp>(builder: (controller) {
      return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemsControllerImp.vesibleitems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.7),
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                itemsControllerImp.goToItemsDetails(ItemsModel.fromJson(
                    itemsControllerImp.vesibleitems[index]));
              },
              child: Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            controller.changeFavorite(itemsControllerImp
                                .vesibleitems[index]["item_id"]);
                          },
                          child: controller.vesibleitems[index]["favorite"] == 1
                              ? const Icon(
                                  Icons.favorite_sharp,
                                  color: Colors.red,
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                ))
                    ],
                  ),
                  Hero(
                    tag:
                        "${ItemsModel.fromJson(itemsControllerImp.items[index]).itemId}",
                    child: Image.network(
                      "${AppLink.imagesItems}${itemsControllerImp.items[index]['item_image']}",
                      height: 150,
                      width: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    itemsControllerImp.items[index]['item_name_en'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "Price: ${itemsControllerImp.items[index]['item_price']}LE"),
                        InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(Icons.add)),
                        )
                      ],
                    ),
                  )
                ],
              )),
            );
          });
    });
  }
}
