import 'package:e_commerce/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      child: Image.asset(
        AppImageAsset.logo,
        // height: 100,
      ),
    );
  }
}
