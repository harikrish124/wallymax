import 'package:flutter/material.dart';

class WallList extends StatelessWidget {
  WallList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 0, right: 14, left: 14),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.5,
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }

  final List<String> imagePaths = [
    'assets/E1.png',
    'assets/E2.png',
    'assets/E3.png',
    'assets/E4.png',
    'assets/E5.png',
    'assets/E6.png',
  ];
}
