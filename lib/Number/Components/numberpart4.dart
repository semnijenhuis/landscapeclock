import 'package:flutter/material.dart';
import 'standarddata.dart';

Container numberpart4(String number) {


  List<BoxShadow> setShadow() {
    if (number == "1" || number == "4" || number == "7") {
      return standardBoxShadow(false);
    } else {
      return standardBoxShadow(true);
    }
  }

  return Container(
    height: getStandardWith(),
    decoration: BoxDecoration(
      color: standardTimeColor(),
      boxShadow: setShadow(),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
  );
}
