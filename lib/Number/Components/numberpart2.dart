import 'package:flutter/material.dart';

Container numberpart2(String number) {
  MaterialColor setColor() {
    if (number == "5" || number == "6") {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }

  return Container(
    width: 25,
    height: 100,
    decoration: BoxDecoration(
      color: setColor(),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
    ),
  );
}
