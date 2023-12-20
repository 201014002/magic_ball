import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  void changeDesicion(){
    setState(() {
      ballNumber=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(onPressed: () {
          changeDesicion();
        },
        child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}
