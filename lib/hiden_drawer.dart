// ignore_for_file: prefer_const_constructors

import 'package:animate_screens/pages/home_page.dart';
import 'package:animate_screens/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HidenDrawer extends StatefulWidget {
  const HidenDrawer({Key? key}) : super(key: key);

  @override
  State<HidenDrawer> createState() => _HidenDrawerState();
}

class _HidenDrawerState extends State<HidenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.deepPurple,
        ),
        SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade200,
      slidePercent: 50,
      contentCornerRadius: 50,
    );
  }
}
