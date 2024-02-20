import 'package:flutter/material.dart';

class TweenDemoWidget extends StatefulWidget {
  const TweenDemoWidget({super.key});

  @override
  TweenDemoWidgetState createState() => TweenDemoWidgetState();
}

class TweenDemoWidgetState extends State<TweenDemoWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 10.0, end: 300.0)
        .chain(CurveTween(curve: Curves.bounceOut))
        .animate(_animationController);
    _animation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: _animation.value,
                    top: 10.0,
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.green[600],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: const Text('Animate!'),
              onPressed: () {
                _animationController.forward();
              },
            )
          ],
        ),
      ),
    );
  }
}
