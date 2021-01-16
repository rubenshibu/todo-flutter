import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newtotolist/src/screens/onboarding/Onboarding.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      openOnBoard,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TERMINAL',
          style: TextStyle(
              fontSize: 35,
              color: Colors.purple,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              letterSpacing: 8,
              wordSpacing: 20,
              shadows: [
                Shadow(
                    color: Colors.blueAccent,
                    offset: Offset(2, 1),
                    blurRadius: 10)
              ]),
        ),
      ),
    );
  }

  void openOnBoard() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
