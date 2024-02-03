import 'package:e_commerce/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTextButtonAuth extends StatelessWidget {
  const CustomTextButtonAuth({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: TextStyle(color: AppColor.primaryColor),
      ),
      onTap: onTap,
    );
  }
}
