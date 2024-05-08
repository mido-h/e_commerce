import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PricePart extends StatelessWidget {
  const PricePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              "EGP 55",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(child: Icon(Icons.remove)),
                Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                InkWell(child: Icon(Icons.add)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
