import 'package:flutter/material.dart';
import 'standarddata.dart';


Container numberpart1(String number) {



  List<BoxShadow> setShadow() {
    if (number == "1" || number == "4") {
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
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}
