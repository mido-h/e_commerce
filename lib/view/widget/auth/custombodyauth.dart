import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBodyAuth extends StatelessWidget {
  const CustomBodyAuth({super.key, required this.body});
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        body.tr,
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
