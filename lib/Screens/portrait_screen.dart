import 'package:flutter/material.dart';

class Portrait extends StatefulWidget {
  const Portrait({Key? key}) : super(key: key);

  @override
  State<Portrait> createState() => _PortraitState();
}

class _PortraitState extends State<Portrait> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }
}

