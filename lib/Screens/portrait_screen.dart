import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Number/Components/standarddata.dart';

class Portrait extends StatefulWidget {
  const Portrait({Key? key}) : super(key: key);

  @override
  State<Portrait> createState() => _PortraitState();
}

class _PortraitState extends State<Portrait> {
  bool wifi = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.grey[900],

      body: ListView(
        children: [
          Text("Wekker",style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: standardTimeColor(),
                boxShadow: standardBoxShadow(wifi),

                borderRadius: BorderRadius.circular(4),
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("04:28",style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),),
                        Text("Farj", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ))
                      ],
                    ),
                  ),
                  Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoSwitch(
                          value: wifi,

                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              wifi = value!;
                            });
                          },),
                      )
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: standardTimeColor(),
                boxShadow: standardBoxShadow(wifi),

                borderRadius: BorderRadius.circular(4),
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("04:28",style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),),
                        Text("Farj", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ))
                      ],
                    ),
                  ),
                  Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoSwitch(
                          value: wifi,

                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              wifi = value!;
                            });
                          },),
                      )
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: standardTimeColor(),
                boxShadow: standardBoxShadow(wifi),

                borderRadius: BorderRadius.circular(4),
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("04:28",style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),),
                        Text("Farj", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ))
                      ],
                    ),
                  ),
                  Center(
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoSwitch(
                          value: wifi,

                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              wifi = value!;
                            });
                          },),
                      )
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }
}

