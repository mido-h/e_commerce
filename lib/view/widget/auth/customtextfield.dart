import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.hint,
      required this.controller,
      required this.label,
      required this.icon,
      this.validator,
      this.obscure,
      this.iconOnTap});
  final String? hint;
  final String label;
  final TextEditingController? controller;
  final IconData icon;
  final String? Function(String?)? validator;
  final void Function()? iconOnTap;
  final bool? obscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: obscure == null || obscure == false ? false : true,
        validator: validator,
        controller: controller,
        // obscureText: obscure!,
        decoration: InputDecoration(
            hintText: hint,
            focusColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            label: Text(label),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: InkWell(
              onTap: iconOnTap,
              child: Icon(icon),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
