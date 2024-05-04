import 'package:e_commerce/core/class/status_request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    if (statusRequest == StatusRequest.loading) {
      return Center(child: Text("loading..."));
    } else {
      return widget;
    }
  }
}
