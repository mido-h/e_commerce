import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  CustomButtonLang({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
