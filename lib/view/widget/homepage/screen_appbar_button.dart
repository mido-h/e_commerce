import 'package:e_commerce/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenAppBarButton extends GetView<HomeScreenControllerImp> {
  const ScreenAppBarButton(this.onPressed, this.icon, this.index, this.name,
      {super.key});
  final void Function()? onPressed;
  final IconData icon;
  final int index;
  final String name;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: controller.currentPage == index ? Colors.red : Colors.black,
          ),
          Text(name)
        ],
      ),
    );
  }
}
