import 'dart:math';

import 'package:flutter/material.dart';

class ClockUI extends StatefulWidget {
  const ClockUI({super.key});

  @override
  State<ClockUI> createState() => _ClockUIState();
}

class _ClockUIState extends State<ClockUI> {
  Duration duration = Duration();

  @override
  void initState() {
    super.initState();
    DateTime dateTime = DateTime.now();
    duration = Duration(seconds: dateTime.second, minutes: dateTime.minute, hours: dateTime.hour);
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xffdadada),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-10, -10),
                    spreadRadius: 8,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(8, 8),
                    spreadRadius: 8,
                    blurRadius: 10,
                  )
                ],
              ),
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white54,
                    offset: Offset(10, 10),
                    spreadRadius: 8,
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-8, -8),
                    spreadRadius: 8,
                    blurRadius: 10,
                  )
                ],
              ),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Text("12"),
                      Spacer(),
                      Text("6"),
                    ],
                  ),
                  Transform.rotate(
                    angle: 1 / 6 * pi,
                    child: Column(
                      children: [
                        Text("1"),
                        Spacer(),
                        Text("7"),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 2 / 6 * pi,
                    child: Column(
                      children: [
                        Text("2"),
                        Spacer(),
                        Text("8"),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 3 / 6 * pi,
                    child: Column(
                      children: [
                        Text("2"),
                        Spacer(),
                        Text("8"),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 4 / 6 * pi,
                    child: Column(
                      children: [
                        Text("2"),
                        Spacer(),
                        Text("8"),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: 5 / 6 * pi,
                    child: Column(
                      children: [
                        Text("|"),
                        Spacer(),
                        Text("|"),
                      ],
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inHours / 6 * pi,
                    child: Container(
                      width: 6,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 50),
                      color: Colors.black,
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inMinutes / 30 * pi,
                    child: Container(
                      width: 4,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 20),
                      color: Colors.black,
                    ),
                  ),
                  Transform.rotate(
                    angle: duration.inSeconds / 30 * pi,
                    child: Container(
                      width: 2,
                      height: 200,
                      margin: EdgeInsets.only(bottom: 100, top: 5),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: "${duration.inHours % 24}".padLeft(2, "0")),
                  TextSpan(text: ":"),
                  TextSpan(text: "${duration.inMinutes % 60}".padLeft(2, "0")),
                  TextSpan(text: ":"),
                  TextSpan(text: "${duration.inSeconds % 60}".padLeft(2, "0")),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 200,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(
                      value: (duration.inHours % 24) / 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      value: (duration.inMinutes % 60) / 60,
                    ),
                  ),
                  CircularProgressIndicator(
                    value: (duration.inSeconds % 60) / 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void timer() async {
    await Future.delayed(Duration(seconds: 1), () {});
    duration = Duration(seconds: duration.inSeconds + 1);
    timer();
    setState(() {});
  }
}
