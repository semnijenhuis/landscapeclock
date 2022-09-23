import 'dart:async';

import 'package:flutter/material.dart';
import '../Number/Components/standarddata.dart';
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
  double _currentSliderValue = 20;

  Color scrollMainColor = Colors.transparent;
  Color scrollBackColor = Colors.transparent;
  var active = false;

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

      backgroundColor: Colors.grey[900],

    body: Column(
      children: [

        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0,top: 10,bottom: 10),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: standardTimeColor(),
                boxShadow: standardBoxShadow(active),

                borderRadius: BorderRadius.circular(10),
              ),
              child: Slider(
                min: 0.0,
                max: 100.0,
                value: _currentSliderValue,
                activeColor: scrollMainColor,
                inactiveColor: scrollBackColor,
                thumbColor: scrollMainColor,
                onChanged: (value) {
                  setState(() {
                    active = true;
                    scrollMainColor = Colors.grey;
                    scrollBackColor = Colors.grey.shade800;
                    _currentSliderValue = value;
                    Future.delayed(Duration(seconds: 2), (){
                      //Navigator.pushNamed("routeName");
                     scrollMainColor = Colors.transparent;
                     scrollBackColor = Colors.transparent;
                     active = false;
                    });
                  });
                },
              ),
            ),
          ),
        ),
        Flexible(
          flex: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Flexible(child:numberContainer(h1) ),
              Flexible(child:numberContainer(h2) ),
              Flexible(child:numberContainer(m1) ),
              Flexible(child:numberContainer(m2) ),

            ],
          ),
        ),
      ],
    ),
    );
  }

}
