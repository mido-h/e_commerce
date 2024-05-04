import 'package:e_commerce/controller/homepage_controller.dart';
import 'package:e_commerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageItems extends GetView<HomePageControllerImp> {
  const HomePageItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: 140,
        child: ListView.builder(
            itemCount: controller.items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(right: 7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 140,
                width: 140,
                child: Image.network(
                  "${AppLink.imagesItems}${controller.items[index]['item_image']}",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              );
            }));
  }
}
