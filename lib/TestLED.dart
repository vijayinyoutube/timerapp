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
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyMinuteTenth(0),
            MyMinuteUnit(1),
            MySecondsTenth(2),
            MySecondsUnit(3),
          ],
        ),
      ),
    );
  }
}
