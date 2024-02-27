import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'package:wallymax/Screens/LikeScreen.dart';
import 'package:wallymax/Screens/SettingsScreen.dart';

class CustomnavBar extends StatelessWidget {
  const CustomnavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        const LikeScreen(),
        Container(),
        const SettingScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          activeColorPrimary: Color.fromARGB(41, 2, 9, 53),
          icon: const Icon(Icons.home),
          title: "Home",
        ),
        PersistentBottomNavBarItem(
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          icon: const Icon(Icons.search),
          title: "Search",
        ),
        PersistentBottomNavBarItem(
          inactiveColorPrimary: const Color.fromARGB(168, 168, 168, 100),
          icon: const Icon(Icons.settings),
          title: "settings",
        ),
      ],
      popAllScreensOnTapOfSelectedTab: false,
    );
  }
}
