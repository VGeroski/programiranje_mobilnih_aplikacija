import 'package:flutter/material.dart';

class GreenSquareWidget extends StatefulWidget {
  const GreenSquareWidget({super.key});

  @override
  GreenSquareWidgetState createState() => GreenSquareWidgetState();
}

class GreenSquareWidgetState extends State<GreenSquareWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double xRange = MediaQuery.of(context).size.width - 70.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 10.0,
                    left: _animationController!.value * xRange + 10.0,
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green[600],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text('Start'),
                  onPressed: () {
                    _animationController!.forward();
                  },
                ),
                ElevatedButton(
                  child: const Text('Stop'),
                  onPressed: () {
                    _animationController!.stop();
                  },
                ),
                ElevatedButton(
                  child: const Text('Reset'),
                  onPressed: () {
                    _animationController!.reset();
                  },
                ),
                ElevatedButton(
                  child: const Text('Reverse'),
                  onPressed: () {
                    _animationController!.reverse();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
