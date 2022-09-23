import 'dart:ffi';

import 'package:flutter/material.dart';


Color standardTimeColor(){
  return Colors.grey.shade900;
}

List<BoxShadow> standardBoxShadow(var shadow) {
  BoxShadow shadow1 = BoxShadow(
      color: Colors.black,
      offset: Offset(5.0, 5.0),
      spreadRadius: 5.0,
      blurRadius: 15,

  );
  BoxShadow shadow2 = BoxShadow(
    color: Colors.grey.shade800,
    offset: Offset(-4.0, -4.0),
    spreadRadius: 2.0,
    blurRadius: 15,
  );

  if (shadow == true) {
    return [shadow1,shadow2];
  }
  else {
    return [];
  }
}

double getStandardWith(){
  return 20;
}
double getStandardheight(){
  return 100;
}
