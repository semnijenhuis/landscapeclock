import 'package:flutter/material.dart';

Container numberpart6(String number) {
  MaterialColor setColor() {
    if (number == "1" || number == "2" || number == "3" || number == "7") {
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
