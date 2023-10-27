import 'package:flutter/material.dart';
import 'package:flutter_baby_diary/navi_abstract.dart';
import 'package:flutter_baby_diary/navi_growth_curve.dart';
import 'package:flutter_baby_diary/navi_menu.dart';
import 'package:flutter_baby_diary/navi_record.dart';

/// home
/// @author: steadyuan
/// @date: 2023/8/10
class HomeScreen extends StatefulWidget {
  final int index;

  const HomeScreen({super.key, required this.index});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.edit), label: "记录"),
          NavigationDestination(icon: Icon(Icons.document_scanner), label: "摘要"),
          NavigationDestination(icon: Icon(Icons.shape_line_sharp), label: "成长曲线"),
          NavigationDestination(icon: Icon(Icons.menu), label: "菜单"),
        ],
        selectedIndex: _index,
        onDestinationSelected: (index) {
          setState(() {
            _index = index;
          });
        },
        backgroundColor: Colors.pinkAccent,
      ),
      body: [
        const NaviRecord(),
        const NaviAbstract(),
        const NaviGrowthCurve(),
        const NaviMenu(),
      ][_index],
    );
  }
}
