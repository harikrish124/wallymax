import 'package:flutter/material.dart';
import 'package:wallymax/BottamBar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(25, 30, 49, 100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/Splash.png")),
          const CircularProgressIndicator()
        ],
      ),
    );
  }

  Future _navigateHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => const CustomnavBar())));
  }
}
