import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:wallymax/BottamBar.dart';
import 'package:wallymax/Widgets/Category.dart';
import 'package:wallymax/Widgets/CategoryMethods.dart';
import 'package:wallymax/Widgets/Categoryitems.dart';
import 'package:wallymax/Widgets/SearchBar.dart';
import 'package:wallymax/Widgets/WallLists.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: CustomnavBar()));
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SearchBarW(),
            Carousel(images: images),
            const Category(),
            const CategoryItems(),
            const CategoryMethods(),
            WallList(),
          ],
        ),
        //bottomNavigationBar: const CustomnavBar(),
      ),
    );
  }

  List<String> images = [
    'assets/c1.png',
    'assets/c2.png',
    'assets/c3.png',
  ];
}

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
        //floatingIndicator: false,
        allowImplicitScrolling: true,
        indicatorMargin: 5,
        autoPlayCurve: Curves.linear,
        reverse: true,
        viewportFraction: 1,
        aspectRatio: 2,
        enableInfiniteScroll: true,
        autoPlay: true,
        showIndicator: true,
        slideIndicator: CircularWaveSlideIndicator(
            indicatorRadius: 6, currentIndicatorColor: Colors.white),
      ),
      items: images.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
                top: 20,
              ),
              decoration: const BoxDecoration(),
              child: Image.asset(
                url,
                fit: BoxFit.contain,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
