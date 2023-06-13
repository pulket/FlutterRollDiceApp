import 'package:flutter/material.dart';
import 'dart:math';

class ContainerWid extends StatefulWidget {
  ContainerWid(
    this.fc,
    this.sc, {
    super.key,
  });

  var fc;
  var sc;

  @override
  State<ContainerWid> createState() => _ContainerWidState();
}

class _ContainerWidState extends State<ContainerWid> {
  var randomNumber = 1;

  void rolldie() {
    setState(() {
      Random random = new Random();
     randomNumber = random.nextInt(6) + 1;
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [widget.fc, widget.sc])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$randomNumber.png',
              width: 250,
            ),
            TextButton(
              onPressed: rolldie,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
              ),
              child: Text("roll dice",style: TextStyle(color: Colors.indigo),),
            ),
          ],
        ),
      ),
    );
  }
}
