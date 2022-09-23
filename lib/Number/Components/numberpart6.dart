import 'package:flutter/material.dart';
import 'standarddata.dart';

Container numberpart6(String number) {

  List<BoxShadow> setShadow() {
    if (number == "1" || number == "2" || number == "3" || number == "7") {
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
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}
