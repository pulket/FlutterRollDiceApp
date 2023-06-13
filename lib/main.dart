import 'package:flutter/material.dart';
import 'package:demop/container.dart';

void main() {
  var firstcolor = Color.fromARGB(255, 15, 255, 83);
  var secondcolor = Color.fromARGB(255, 255, 0, 0);
  runApp( MaterialApp(
    home: Scaffold(
      body: ContainerWid(firstcolor,secondcolor),
    ),
  ));
}


