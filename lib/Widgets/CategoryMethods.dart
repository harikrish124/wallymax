import 'package:flutter/material.dart';

class CategoryMethods extends StatelessWidget {
  const CategoryMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 0),
      child: Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.only(top: 0),
        color: const Color.fromRGBO(225, 244, 255, 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/G6.png",
              width: 100,
              height: 100,
            ),
            Image.asset(
              "assets/G7.png",
              width: 60,
              height: 60,
            ),
            Image.asset(
              "assets/G8.png",
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
