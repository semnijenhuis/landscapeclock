import 'package:flutter/material.dart';

Container numberpart1(String number) {
  MaterialColor setColor() {
    if (number == "1" || number == "4") {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }

  return Container(
    height: 25,
    decoration: BoxDecoration(
      color: setColor(),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}
