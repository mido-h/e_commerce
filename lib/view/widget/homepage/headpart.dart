import 'package:flutter/material.dart';

class HeadPartHomePage extends StatelessWidget {
  const HeadPartHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Find a product",
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.5),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 30,
                  color: Colors.grey[600],
                )),
          )
        ],
      ),
    );
  }
}
