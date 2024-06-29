import 'package:e_commerce/controller/homepage_controller.dart';
import 'package:e_commerce/link_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomepageCategories extends GetView<HomePageControllerImp> {
  const HomepageCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        height: 70,
        child: ListView.builder(
            itemCount: controller.categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  controller.toItems(index+1);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(10)),
                  height: 70,
                  width: 70,
                  child: SvgPicture.network(
                    "${AppLink.imagesCategories}${controller.categories[index]['category_image']}",
                    color: Colors.orange[800],
                  ),
                ),
              );
            }));
  }
}
