import 'dart:async';

import 'package:flutter/material.dart';
import '../Number/numberContainer.dart';

class LandScape extends StatefulWidget {
  const LandScape({Key? key}) : super(key: key);

  @override
  State<LandScape> createState() => _LandScapeState();
}

class _LandScapeState extends State<LandScape> {

  late Timer timer;



  void setNumb() {
    setState(() {
    });
  }



  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => setNumb());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    final date = DateTime.now();

    String hour = date.hour.toString();
    String minute = date.minute.toString();
    String second = date.second.toString();

    String displayH1(){
      if (date.minute < 10) {
        return "0";
      }
      else {
        return minute[0];
      }
    }
    String displayH2(){
      if (date.minute < 10) {
        return date.minute.toString();
      }
      else {
        return minute[1];
      }
    }

    String displayM1(){
      if (date.second < 10) {
        return "0";
      }
      else {
        return second[0];
      }
    }
    String displayM2(){
      if (date.second < 10) {
        return date.second.toString();
      }
      else {
        return second[1];
      }
    }

    String h1 = displayH1();
    String h2 = displayH2();
    String m1 = displayM1();
    String m2 = displayM2();

    return  Scaffold(
     // This
      backgroundColor: Colors.blue,

    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Flexible(child:numberContainer(h1) ),
        Flexible(child:numberContainer(h2) ),
        Flexible(child:numberContainer(m1) ),
        Flexible(child:numberContainer(m2) ),

      ],
    ),
    );
  }

  Container createNumber(String numbToCreate) {
    return Container(
        //color: Colors.white,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Object 1
            buildnumberPart1(numbToCreate),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Object 6
                buildnumberPart6(numbToCreate),

                // Object 2
                buildnumberPart2(numbToCreate),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // Object 7
              child: buildnumberPart7(numbToCreate),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Object 5
                buildnumberPart5(numbToCreate),
                // Object 3
                buildnumberPart3(numbToCreate),
              ],
            ),

            // Object 4
            buildnumberPart4(numbToCreate),
          ],
        ),
      );
  }

  Container buildnumberPart1(String number) {

    MaterialColor setColor(){
      if(number == "1" || number == "4") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }
    return Container(
      height: 25,
      decoration: BoxDecoration(
        color: setColor(),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30),),
      ),
    );
  }
  Container buildnumberPart2(String number) {
    MaterialColor setColor(){
      if(number == "5" || number == "6") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }
    return Container(
                  width: 25,
                  height: 100,
                  decoration: BoxDecoration(
                    color: setColor(),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),),
                  ),
                );
  }
  Container buildnumberPart3(String number) {

    MaterialColor setColor(){
      if(number == "2") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }

    return Container(
      width: 25,
      height: 100,
      decoration: BoxDecoration(
        color: setColor(),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30),),
      ),
    );
  }
  Container buildnumberPart4(String number) {
    MaterialColor setColor(){
      if(number == "1" || number == "4" || number == "7") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }
    return Container(
      height: 25,
      decoration: BoxDecoration(
        color: setColor(),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
      ),
    );
  }
  Container buildnumberPart5(String number) {

    MaterialColor setColor(){
      if(number == "1" || number == "3"|| number == "4"|| number == "5"|| number == "7" || number == "9") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }

    return Container(
      width: 25,
      height: 100,
      decoration: BoxDecoration(
        color: setColor(),
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30),),
      ),
    );
  }
  Container buildnumberPart6(String number) {

    MaterialColor setColor(){
      if(number == "1" || number == "2"|| number == "3"|| number == "7") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }

    return Container(
                  width: 25,
                  height: 100,
                  decoration: BoxDecoration(
                    color: setColor(),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30),),
                  ),
                );
  }
  Container buildnumberPart7(String number) {
    MaterialColor setColor(){
      if(number == "1" || number == "7"|| number == "0") {
        return Colors.blue;
      }
      else {
        return Colors.grey;
      }
    }

    return Container(
      //width: 100,
      height: 25,
      decoration: BoxDecoration(
        color: setColor(),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}
