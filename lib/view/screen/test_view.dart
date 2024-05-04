import 'package:e_commerce/controller/test_controller.dart';
import 'package:e_commerce/core/class/status_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: GetBuilder<TestController>(
        builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return const Center(
              child: Text("Loading"),
            );
          } else if (controller.statusRequest != StatusRequest.loading &&
              controller.statusRequest != StatusRequest.success) {
            return Center(
              child: Text(controller.statusRequest.toString()),
            );
          } else {
            return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              },
            );
          }
        },
      ),
    );
  }
}
