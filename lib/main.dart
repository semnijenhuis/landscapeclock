import 'package:flutter/material.dart';
import 'Screens/landscape_screen.dart';
import 'Screens/portrait_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const MyHomePage(),
    );
  }



}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return getScreen(context);
  }
}

StatefulWidget getScreen(BuildContext context){

  final isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;

  if(isLandScape) {
    return const LandScape();
  } else {
    return const Portrait();
  }

}