import 'package:flutter/material.dart';

class AddToCartBottmomNavigationBar extends StatelessWidget {
  const AddToCartBottmomNavigationBar({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: onPressed,
          child: Container(
            child: Text("Add to cart"),
          )),
    );
  }
}
