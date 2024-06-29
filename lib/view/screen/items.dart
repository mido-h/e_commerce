import 'package:e_commerce/view/screen/items_grid.dart';
import 'package:e_commerce/view/widget/homepage/headpart.dart';
import 'package:e_commerce/view/widget/homepage/items_categories.dart';
import 'package:flutter/material.dart';

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
