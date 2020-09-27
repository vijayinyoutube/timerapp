import 'dart:math';

import 'package:flutter/material.dart';
import 'package:timerapp/Source/LED.dart';

class MySecondsUnit extends StatefulWidget {
  final int digit;

  const MySecondsUnit(this.digit);

  @override
  MySecondsUnitState createState() => MySecondsUnitState();
}

class MySecondsUnitState extends State<MySecondsUnit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color:
                mytime[widget.digit][0] == 1 ? Colors.white : Colors.grey[850],
            height: 2.5,
            width: 50,
          ),
          Transform.translate(
            offset: Offset(30, 30),
            child: Transform.rotate(
              angle: pi / 2,
              child: Container(
                color: mytime[widget.digit][1] == 1
                    ? Colors.white
                    : Colors.grey[850],
                height: 2.5,
                width: 50,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 57),
            child: Container(
              color: mytime[widget.digit][2] == 1
                  ? Colors.white
                  : Colors.grey[850],
              height: 2.5,
              width: 50,
            ),
          ),
          Transform.translate(
            offset: Offset(30, 85),
            child: Transform.rotate(
              angle: pi / 2,
              child: Container(
                color: mytime[widget.digit][3] == 1
                    ? Colors.white
                    : Colors.grey[850],
                height: 2.5,
                width: 50,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 115),
            child: Container(
              color: mytime[widget.digit][4] == 1
                  ? Colors.white
                  : Colors.grey[850],
              height: 2.5,
              width: 50,
            ),
          ),
          Transform.translate(
            offset: Offset(-30, 85),
            child: Transform.rotate(
              angle: pi / 2,
              child: Container(
                color: mytime[widget.digit][5] == 1
                    ? Colors.white
                    : Colors.grey[850],
                height: 2.5,
                width: 50,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-30, 30),
            child: Transform.rotate(
              angle: pi / 2,
              child: Container(
                color: mytime[widget.digit][6] == 1
                    ? Colors.white
                    : Colors.grey[850],
                height: 2.5,
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
