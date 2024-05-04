import 'package:e_commerce/controller/homepage_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/view/screen/handlingview.dart';
import 'package:e_commerce/view/widget/homepage/bannar.dart';
import 'package:e_commerce/view/widget/homepage/categories.dart';
import 'package:e_commerce/view/widget/homepage/headpart.dart';
import 'package:e_commerce/view/widget/homepage/items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Container(
      color: Colors.grey,
      child: GetBuilder<HomePageControllerImp>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView(
              children: [
                HeadPartHomePage(),
                BannarWidget(),
                HomepageCategories(),
                Container(
                  padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                  child: Text(
                    "Products For You",
                    style:
                        TextStyle(fontSize: 25, color: AppColor.primaryColor),
                  ),
                ),
                HomePageItems()
              ],
            ),
          );
        },
      ),
    );
  }
}
