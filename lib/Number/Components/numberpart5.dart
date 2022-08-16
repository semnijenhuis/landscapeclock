import 'package:flutter/material.dart';

Container numberpart5(String number) {
  MaterialColor setColor() {
    if (number == "1" ||
        number == "3" ||
        number == "4" ||
        number == "5" ||
        number == "7" ||
        number == "9") {
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
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}
