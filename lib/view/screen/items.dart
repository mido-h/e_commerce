import 'package:e_commerce/controller/items_controller.dart';
import 'package:e_commerce/data/model/items_model.dart';
import 'package:e_commerce/view/screen/items_grid.dart';
import 'package:e_commerce/view/widget/homepage/categories.dart';
import 'package:e_commerce/view/widget/homepage/headpart.dart';
import 'package:e_commerce/view/widget/homepage/items_categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: ListView(children: [
          Column(
            children: [HeadPartHomePage(), ItemsCategories(), ItemsGrid()],
          ),
        ]),
      ),
    );
  }
}
