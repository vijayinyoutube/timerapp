import 'dart:math';

import 'package:flutter/material.dart';

class LEDTest extends StatefulWidget {
  LEDTest({Key key}) : super(key: key);

  @override
  _LEDTestState createState() => _LEDTestState();
}

List one, two, three, four, five, six, seven, eight, nine;
List mytime = <List>[
  one = <int>[
    0,
    1,
    0,
    1,
    0,
    0,
    0,
  ],
  two = <int>[
    1,
    1,
    1,
    0,
    1,
    1,
    0,
  ],
  three = <int>[
    1,
    1,
    1,
    1,
    1,
    0,
    0,
  ],
];

class _LEDTestState extends State<LEDTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              child: Stack(
                children: [
                  Container(
                    color: mytime[0][0] == 1 ? Colors.red : Colors.grey[350],
                    height: 2.5,
                    width: 50,
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[0][1] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 57),
                    child: Container(
                      color: mytime[0][2] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[0][3] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 115),
                    child: Container(
                      color: mytime[0][4] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[0][5] == 1 ? Colors.red : Colors.grey[350],
                        height: mytime[0][5] == 1 ? 3.5 : 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[0][6] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //--------------------------------------------
            Container(
              child: Stack(
                children: [
                  Container(
                    color: mytime[1][0] == 1 ? Colors.red : Colors.grey[350],
                    height: mytime[1][0] == 1 ? 3.5 : 2.5,
                    width: 50,
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[1][1] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 57),
                    child: Container(
                      color: mytime[1][2] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[1][3] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 115),
                    child: Container(
                      color: mytime[1][4] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[1][5] == 1 ? Colors.red : Colors.grey[350],
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
                        color:
                            mytime[1][6] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //--------------------------------------------
            Container(
              child: Stack(
                children: [
                  Container(
                    color: mytime[2][0] == 1 ? Colors.red : Colors.grey[350],
                    height: 2.5,
                    width: 50,
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[2][1] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 57),
                    child: Container(
                      color: mytime[2][2] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[2][3] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 115),
                    child: Container(
                      color: mytime[2][4] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color:
                            mytime[2][5] == 1 ? Colors.red : Colors.grey[350],
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
                        color:
                            mytime[2][6] == 1 ? Colors.red : Colors.grey[350],
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //--------------------------------------------
            Container(
              child: Stack(
                children: [
                  Container(
                    color: Colors.red,
                    height: 2.5,
                    width: 50,
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color: Colors.red,
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color: Colors.red,
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 57),
                    child: Container(
                      color: mytime[0][0] == 1 ? Colors.red : Colors.grey[350],
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 30),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color: Colors.red,
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 85),
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: Container(
                        color: Colors.red,
                        height: 2.5,
                        width: 50,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 115),
                    child: Container(
                      color: Colors.red,
                      height: 2.5,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
