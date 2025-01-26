import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_screens/widgets/homescreen/popup_menu_button_for_tab_bar.dart';
import 'package:jp_screens/widgets/homescreen/tab_bar_item.dart';

class TabBarHomeScreen extends StatelessWidget {
  const TabBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      isScrollable: true,
      unselectedLabelColor: const Color.fromRGBO(255, 255, 255, 0.2),
      tabs: [
        PopupMenuButtonForTabBar(),
        TabBarItem(itemText: "Salty"),
        TabBarItem(itemText: "Sweet"),
        TabBarItem(itemText: "Spicy"),
        TabBarItem(itemText: "Sour")
      ],
    );
  }
}
