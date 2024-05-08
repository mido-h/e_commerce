import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/controller/items_details_controller.dart';
import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:e_commerce/link_api.dart';
import 'package:e_commerce/view/widget/homepage/addtocart_bottomnavigationbar.dart';
import 'package:e_commerce/view/widget/homepage/headpart.dart';
import 'package:e_commerce/view/widget/homepage/price_part.dart';
import 'package:e_commerce/view/widget/homepage/product_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsControllerImp itemsDetailsController =
        Get.put(ItemsDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: AddToCartBottmomNavigationBar(
        onPressed: () {},
      ),
      body: Container(
        child: ListView(
          children: [
            Column(children: [
              HeadPartHomePage(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Product Name",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Product Description...Here will be the product description",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ProductImageItemsDetails(),
              PricePart(),
            ])
          ],
        ),
      ),
    );
  }
}
