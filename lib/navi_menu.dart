import 'package:flutter/material.dart';

/// navi_menu
/// @author: steadyuan
/// @date: 2023/8/10
class NaviMenu extends StatefulWidget {
  const NaviMenu({super.key});

  @override
  State<StatefulWidget> createState() => _NaviMenuState();
}

class _NaviMenuState extends State<NaviMenu> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("menu"));
  }
}
