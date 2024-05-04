import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class BannarWidget extends StatelessWidget {
  const BannarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryColor,
            ),
            child: ListTile(
              title: Text("your advertise here"),
              subtitle: Text("your advertise here"),
            ),
          ),
          Positioned(
              top: -20,
              right: -20,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[800],
                    borderRadius: BorderRadius.circular(100)),
                height: 160,
                width: 160,
              ))
        ],
      ),
    );
  }
}
