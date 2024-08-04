import 'package:flutter/material.dart';
import 'package:flutter_ui/const.dart';

Widget ItemCategory(String value, bool active) {
  return Container(
    margin: EdgeInsets.only(right: 16),
    padding: EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 16),
    decoration: BoxDecoration(
      gradient: active ? gradientColor() : null,
      color: !active ? Color.fromARGB(31, 206, 200, 200) : null,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: text(value, 14, active ? Colors.white : Colors.black54, FontWeight.normal)
    ),
  );
}