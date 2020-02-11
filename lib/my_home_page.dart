import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = new Random();

  var bgColor = Color.fromARGB(255, 255, 0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test project'),
        ),
        backgroundColor: bgColor,
        body: Center(
          child: Text('Hey there!'),
        ),
      ),
      onTap: _changeColor,
    );
  }

  void _changeColor() {
    setState(() {
      bgColor = Color.fromARGB(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256)
      );
    });
  }
}
