import 'package:flutter/material.dart';

import 'Components/numberpart1.dart';
import 'Components/numberpart2.dart';
import 'Components/numberpart3.dart';
import 'Components/numberpart4.dart';
import 'Components/numberpart5.dart';
import 'Components/numberpart6.dart';
import 'Components/numberpart7.dart';

Padding numberContainer(String numbToCreate) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      constraints: const BoxConstraints(maxWidth: 150),
      //color: Colors.white,
      //width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Object 1
          numberpart1(numbToCreate),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Object 6
              numberpart6(numbToCreate),

              // Object 2
              numberpart2(numbToCreate),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Object 7
            child: numberpart7(numbToCreate),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Object 5
              numberpart5(numbToCreate),
              // Object 3
              numberpart3(numbToCreate),
            ],
          ),

          // Object 4
          numberpart4(numbToCreate),
        ],
      ),
    ),
  );
}
