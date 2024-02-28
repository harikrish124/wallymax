import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:wallymax/Screens/HomeScreen.dart';
import 'package:wallymax/Screens/SettingsScreen.dart';
import 'package:wallymax/Screens/categoryScreen.dart';

class CustomnavBar extends StatelessWidget {
  const CustomnavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        HomeScreen(),
        const CategoryScreen(),
        const SettingScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          activeColorPrimary: const Color.fromARGB(244, 0, 0, 0),
          icon: const Icon(Icons.home),
          title: "Home ",
        ),
        PersistentBottomNavBarItem(
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          activeColorPrimary: const Color.fromARGB(244, 0, 0, 0),
          icon: const Icon(Icons.category_rounded),
          title: "Category",
        ),
        PersistentBottomNavBarItem(
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          activeColorPrimary: const Color.fromARGB(244, 0, 0, 0),
          icon: const Icon(Icons.settings),
          title: "Setting",
        ),
      ],
      popAllScreensOnTapOfSelectedTab: false,
    );
  }
}
