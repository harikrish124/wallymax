import 'package:flutter/material.dart';
import 'package:wallymax/main.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to the home screen
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: const Text("Click to Open"),
        ),
      ),
    );
  }
}
