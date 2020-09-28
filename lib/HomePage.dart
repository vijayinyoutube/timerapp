import 'dart:async';
import 'package:flutter/material.dart';
import 'Widgets/minutesTenth.dart';
import 'Widgets/minutesUnit.dart';
import 'Widgets/secondsTenth.dart';
import 'Widgets/secondsUnit.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Duration _duration = new Duration(seconds: (10));

  int _counter = 120;
  Timer _timer;
  int minuteTenth = 0, minuteUnit = 0, secondTenth = 0, secondUnit = 0;

  String showtime = "120 Seconds Countdown";
  bool _isbuttondisabled = false;
  void startTimer() {
    _counter = (120);

    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (_counter > 0) {
          setState(() {
            _isbuttondisabled = true;
            _counter--;
            _duration = new Duration(seconds: _counter);
            showtime = "${_duration.inMinutes}:${_duration.inSeconds % 60}";
            print(showtime);
            minuteTenth = ((_duration.inMinutes) / 10).floor();
            minuteUnit = ((_duration.inMinutes) % 10).round();
            secondTenth = ((_duration.inSeconds % 60) / 10).floor();
            secondUnit = ((_duration.inSeconds % 60) % 10).round();
          });
        } else {
          _timer.cancel();
          setState(() {
            _isbuttondisabled = false;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Count Down Timer App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _counter > 0
              ? Text(
                  "Count Down Timer | Counting...${(_counter)} ",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : callbackfunction(),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyMinuteTenth(minuteTenth),
                MyMinuteUnit(minuteUnit),
                Container(
                  height: 150,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      ":",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                MySecondsTenth(secondTenth),
                MySecondsUnit(secondUnit),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  onPressed: _isbuttondisabled == false ? startTimer : null,
                  child: Text("Start Timer"),
                ),
                RaisedButton(
                  elevation: 10,
                  onPressed: _isbuttondisabled == true ? setcounterZero : null,
                  child: Text("Stop Timer"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  setcounterZero() {
    setState(() {
      _counter = 0;
    });
    minuteTenth = 0;
    minuteUnit = 0;
    secondTenth = 0;
    secondUnit = 0;
  }
}

Widget callbackfunction() {
  return Center(
    child: Text(
      "Timer Completed",
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
    ),
  );
}
