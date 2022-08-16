import 'package:flutter/material.dart';

Container numberpart4(String number) {
  MaterialColor setColor() {
    if (number == "1" || number == "4" || number == "7") {
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
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
  );
}
