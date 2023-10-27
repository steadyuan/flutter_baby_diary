import 'package:flutter/material.dart';
import 'package:flutter_baby_diary/remote/data_record_type.dart';

/// navi_record
/// @author: steadyuan
/// @date: 2023/8/10
class NaviRecord extends StatefulWidget {
  const NaviRecord({super.key});

  @override
  State<StatefulWidget> createState() => _NaviRecordState();
}

class _NaviRecordState extends State<NaviRecord> {
  late List<RecordType> types;

  @override
  void initState() {
    super.initState();
    setState(() {
      types = remoteTypes.map((e) => RecordType.from(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 24),
          height: 80,
          color: Colors.pinkAccent,
          child: Row(
            children: [
              IconButton(
                padding: const EdgeInsets.only(left: 16),
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("南南 0岁9月8日"),
                    Text("2023年8月8日 周二"),
                  ],
                ),
              ),
              IconButton(
                padding: const EdgeInsets.only(right: 16),
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                width: 32,
                color: const Color(0xFFFFB6C1),
              ),
              Expanded(
                child: Column(
                  children: [
                    buildRecords(),
                    Container(
                      height: 4,
                      color: Colors.pinkAccent,
                    ),
                    buildTypes(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRecords() {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: 50,
          itemExtent: 40,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  alignment: Alignment.centerRight,
                  child: const Text("2:55"),
                ),
                const SizedBox(width: 12),
                const Icon(Icons.ac_unit),
                const SizedBox(width: 12),
                const Text("配方奶"),
                const SizedBox(width: 12),
                const Text("120ml"),
              ],
            );
          },
        ).build(context),
      ),
    );
  }

  Widget buildTypes() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: types.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  types[index].icon,
                  color: types[index].thumbColor,
                ),
                Text(types[index].name),
              ],
            ),
          );
        },
      ).build(context),
    );
  }
}
