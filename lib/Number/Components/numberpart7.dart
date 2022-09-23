import 'package:flutter/material.dart';
import 'standarddata.dart';

Container numberpart7(String number) {

  List<BoxShadow> setShadow() {
    if (number == "1" || number == "7" || number == "0") {
      return standardBoxShadow(false);
    } else {
      return standardBoxShadow(true);
    }
  }

  return Container(
    width: getStandardheight(),
    height: getStandardWith(),
    decoration: BoxDecoration(
      color: standardTimeColor(),
      boxShadow: setShadow(),
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
