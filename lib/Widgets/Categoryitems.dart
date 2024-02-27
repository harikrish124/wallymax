import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Container(
        padding: const EdgeInsets.all(0),
        color: const Color.fromRGBO(249, 249, 249, 100),
        margin: const EdgeInsets.only(
          bottom: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/G1.png",
              width: 90,
              height: 90,
            ),
            Image.asset(
              "assets/G2.png",
              width: 90,
              height: 90,
            ),
            Image.asset(
              "assets/G3.png",
              width: 90,
              height: 90,
            ),
            Image.asset(
              "assets/G4.png",
              width: 90,
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
