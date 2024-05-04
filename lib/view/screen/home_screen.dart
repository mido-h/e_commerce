import 'package:e_commerce/controller/home_screen_controller.dart';
import 'package:e_commerce/view/widget/homepage/screen_appbar_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.grey,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.shopping_basket_outlined,
              size: 30,
              color: Colors.white,
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            children: [
              Row(children: [
                ScreenAppBarButton(() {
                  controller.changePage(0);
                }, Icons.home, 0, "Home"),
                ScreenAppBarButton(() {
                  controller.changePage(1);
                }, Icons.favorite, 1, "Favorite"),
                ScreenAppBarButton(() {
                  controller.changePage(2);
                }, Icons.person, 2, "Profile"),
                ScreenAppBarButton(() {
                  controller.changePage(3);
                }, Icons.settings, 3, "Settings"),
              ])
            ],
          ),
        ),
        body: controller.screenPages.elementAt(controller.currentPage),
      );
    });
  }
}
