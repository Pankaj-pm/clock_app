import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  Duration duration = Duration();

  bool isScale = false;
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    progressFun();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Time",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "${duration.inHours}:${duration.inMinutes}:${duration.inSeconds % 60}",
              style: TextStyle(fontSize: 22),
            ),
            Transform.scale(
              scale: isScale ? 1 : 2,
              // scaleY: 1,
              // scaleX: 0.5,
              child: Icon(
                isScale ? Icons.favorite : Icons.heart_broken,
                size: 80,
                color: Colors.red,
              ),
            ),
            Transform.translate(
              offset: Offset(0, 0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
            Transform.rotate(
              angle: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
              // value: 0.1,
              backgroundColor: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.yellow,
              value: progress,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DateTime dateTime = DateTime.now();
          var dateTime2 = DateTime(1994,1,1);

          print("day ->${dateTime.day}");
          print("month ->${dateTime.month}");
          print("year ->${dateTime.year}");
          print("hour ->${dateTime.hour}");
          print("second ->${dateTime.second}");
          print("dateTime2 $dateTime2");
          // scaleCon();
          // progressFun();
        },
      ),
    );
  }

  Future<void> scaleCon() async {
    await Future.delayed(Duration(milliseconds: 500), () {});
    isScale = !isScale;
    setState(() {});
    scaleCon();
  }

  void progressFun() async {
    await Future.delayed(Duration(seconds: 1), () {});
    if (progress >= 1) {
      progress = 0;
    }
    progress = progress + 0.1;
    setState(() {});
    progressFun();
  }
}
