import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> exitAlert() {
  Get.defaultDialog(
      title: "Alert",
      middleText: "Do you need to exit?",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("Confirm")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Cancel"))
      ]);
  return Future(() => true);
}
