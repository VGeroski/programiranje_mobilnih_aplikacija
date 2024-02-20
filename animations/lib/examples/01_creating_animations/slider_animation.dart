import 'package:flutter/material.dart';

class SliderAnimation extends StatefulWidget {
  const SliderAnimation({super.key});

  @override
  State<SliderAnimation> createState() => _SliderAnimationState();
}

class _SliderAnimationState extends State<SliderAnimation> {
  var side = 50.0;
  var opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Animation'),
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
            Slider(
              min: 10.0,
              max: 125.0,
              value: side,
              onChanged: (value) {
                setState(() {
                  side = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
