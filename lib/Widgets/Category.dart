import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 15, left: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Category",
            style: TextStyle(
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 24.76),
          ),
          Text(
            "ViewAll",
            style: TextStyle(
                color: Color.fromARGB(255, 28, 144, 217),
                fontFamily: "poppins",
                fontWeight: FontWeight.bold,
                fontSize: 16.76),
          ),
        ],
      ),
    );
  }
}
