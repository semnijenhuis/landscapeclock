import 'package:flutter/material.dart';

Container numberpart7(String number) {
  MaterialColor setColor() {
    if (number == "1" || number == "7" || number == "0") {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }

  return Container(
    width: 100,
    height: 25,
    decoration: BoxDecoration(
      color: setColor(),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
