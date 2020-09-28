import 'package:flutter/material.dart';
import 'package:timerapp/Widgets/minutesTenth.dart';
import 'package:timerapp/Widgets/minutesUnit.dart';
import 'package:timerapp/Widgets/secondsTenth.dart';
import 'package:timerapp/Widgets/secondsUnit.dart';

class LEDTest extends StatefulWidget {
  LEDTest({Key key}) : super(key: key);

  @override
  _LEDTestState createState() => _LEDTestState();
}

int myvalue = 2;

class _LEDTestState extends State<LEDTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,          
          children: [
            MyMinuteTenth(5),
            MyMinuteUnit(4),
            MySecondsTenth(7),
            MySecondsUnit(6),
          ],
        ),
      ),
    );
  }
}
