import 'package:flutter/material.dart';
import 'standarddata.dart';

Container numberpart3(String number) {


  List<BoxShadow> setShadow() {
    if (number == "2") {
      return standardBoxShadow(false);
    } else {
      return standardBoxShadow(true);
    }
  }

  return Container(
    width: 25,
    height: 100,
    decoration: BoxDecoration(
      color: standardTimeColor(),
      boxShadow: setShadow(),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
    ),
  );
}
