import 'package:flutter/material.dart';

/// navi_abstract
/// @author: steadyuan
/// @date: 2023/8/10
class NaviAbstract extends StatefulWidget {
  const NaviAbstract({super.key});

  @override
  State<StatefulWidget> createState() => _NaviAbstractState();
}

class _NaviAbstractState extends State<NaviAbstract> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("abstract"));
  }
}
