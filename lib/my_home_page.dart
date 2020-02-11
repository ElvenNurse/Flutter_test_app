import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.black,
    Colors.cyan,
    Colors.brown,
    Colors.deepOrange,
    Colors.tealAccent,
    Colors.purple
  ];

  Random random = new Random();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test project'),
        ),
        backgroundColor: colors[index],
        body: Center(
          child: Text('Hey there!'),
        ),
      ),
      onTap: _changeColor,
    );
  }

  void _changeColor() {
    setState(() {
      index = random.nextInt(10);
    });
  }
}
