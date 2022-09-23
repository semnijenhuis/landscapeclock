import 'package:flutter/material.dart';
import 'standarddata.dart';

Container numberpart2(String number) {

  List<BoxShadow> setShadow() {
    if (number == "5" || number == "6") {
      return standardBoxShadow(false);
    } else {
      return standardBoxShadow(true);
    }
  }

  return Container(
    width: getStandardWith(),
    height: getStandardheight(),
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
