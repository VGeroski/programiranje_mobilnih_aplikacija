import 'dart:async';
import 'package:flutter/material.dart';

class TimerAnimation extends StatefulWidget {
  const TimerAnimation({super.key});

  @override
  TimerAnimationState createState() => TimerAnimationState();
}

class TimerAnimationState extends State<TimerAnimation> {
  var side = 50.0;
  var opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Animation'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 50.0,
                    left: MediaQuery.of(context).size.width / 2 - (side / 2),
                    child: Container(
                      height: side,
                      width: side,
                      color: Color.fromRGBO(0, 128, 0, opacity),
                    ),
                  ),
                ],
              ),
            ),
            Text(side.toStringAsFixed(0)),
            ElevatedButton(
              child: const Text("Scale"),
              onPressed: () {
                Timer.periodic(const Duration(milliseconds: 10), (timer) {
                  setState(() {
                    side += 1;
                  });
                  if (side >= 150) timer.cancel();
                });
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
