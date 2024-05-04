import 'package:e_commerce/view/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;

  List<Widget> screenPages = [
    const HomePage(),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Settings"),
    )
  ];

  changePage(int page) {
    currentPage = page;
    update();
  }
}
