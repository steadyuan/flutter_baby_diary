import 'package:flutter/material.dart';

/// data_record_type
/// @author: steadyuan
/// @date: 2023/8/11
class RecordType {
  final String type;
  final String name;
  final IconData icon;
  final IconData? thumb;
  final Color? thumbColor;

  RecordType(this.type, this.name, this.icon, this.thumb, this.thumbColor);

  factory RecordType.from(Map<String, dynamic> json) {
    return RecordType(json["type"], json["name"], json["icon"], json["thumb"], json["thumbColor"]);
  }
}

var remoteTypes = [
  {
    "type": "1",
    "name": "母乳",
    "icon": Icons.child_care,
    "thumb": Icons.circle,
    "thumbColor": Colors.yellow,
  },
  {
    "type": "2",
    "name": "配方奶",
    "icon": Icons.child_care_rounded,
    "thumb": Icons.circle,
    "thumbColor": Colors.yellowAccent,
  },
  {
    "type": "3",
    "name": "睡觉",
    "icon": Icons.swipe_up_rounded,
    "thumb": null,
    "thumbColor": null,
  },
  {
    "type": "4",
    "name": "起床",
    "icon": Icons.swipe_down_rounded,
    "thumb": null,
    "thumbColor": null,
  },
  {
    "type": "5",
    "name": "尿尿",
    "icon": Icons.water_drop,
    "thumb": Icons.square,
    "thumbColor": Colors.cyan,
  },
  {
    "type": "6",
    "name": "便便",
    "icon": Icons.water_rounded,
    "thumb": Icons.square,
    "thumbColor": Colors.yellow,
  },
  {
    "type": "7",
    "name": "身高",
    "icon": Icons.rule,
    "thumb": Icons.diamond,
    "thumbColor": Colors.blue,
  },
  {
    "type": "8",
    "name": "体重",
    "icon": Icons.monitor_weight,
    "thumb": Icons.diamond,
    "thumbColor": Colors.green,
  },
  ...List.generate(
      10,
      (index) => {
            "type": "${index + 1 + 8}",
            "name": "自定义${index + 1}",
            "icon": Icons.star,
            "thumb": Icons.star,
            "thumbColor": [
              Colors.yellow,
              Colors.purpleAccent,
              Colors.green,
              Colors.red,
              Colors.blue,
              Colors.pink,
              Colors.purple,
              Colors.brown,
              Colors.black,
              Colors.grey,
            ][index],
          }),
];
