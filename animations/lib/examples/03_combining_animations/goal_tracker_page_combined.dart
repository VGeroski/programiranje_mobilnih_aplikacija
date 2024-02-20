import 'dart:math';

import 'package:flutter/material.dart';

class GoalTrackerPageCombined extends StatelessWidget {
  const GoalTrackerPageCombined({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check In Progress'),
      ),
      body: Center(
        child: Column(
          children: [
            GoalTrackerWidget(
                width: MediaQuery.of(context).size.width - 50.0, numGoals: 3),
          ],
        ),
      ),
    );
  }
}

class GoalTrackerWidget extends StatefulWidget {
  final double width;
  final int numGoals;

  const GoalTrackerWidget({super.key, required this.width, required this.numGoals});

  @override
  GoalTrackerWidgetState createState() => GoalTrackerWidgetState();
}

class GoalTrackerWidgetState extends State<GoalTrackerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _translationAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  var _currentGoal = 0;
  var _numGoals;
  var _buttonText = 'Next Step!';
  var _progress;

  final double _degree = pi / 180.0;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _translationAnimation =
        Tween<double>(begin: 0, end: widget.width - 30.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: const Interval(0.0, 0.5),
          ),
        );
    _translationAnimation.addListener(() {
      setState(() {});
    });

    _rotateAnimation = Tween<double>(begin: 0, end: 1440).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.75, 1.0),
      ),
    );

    _fadeAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 1.0, end: 0.0), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 0.0, end: 1.0), weight: 1),
    ]).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 0.75),
      ),
    );

    _scaleAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween<double>(begin: 1.0, end: 2.0), weight: 1),
      TweenSequenceItem(tween: Tween<double>(begin: 2.0, end: 1.0), weight: 1),
    ]).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 0.75),
      ),
    );

    _numGoals = widget.numGoals;
    _progress = _nextStep;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _nextStep() {
    List<double> _steps = [1.0 / 6.0, 2.0 / 6.0, 1.0];
    _animationController.animateTo(_steps[_currentGoal]);
    _currentGoal += 1;
    if (_currentGoal >= _numGoals) {
      setState(() {
        _buttonText = 'All done!';
        _progress = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100.0,
                width: widget.width,
              ),
              Positioned(
                top: 50.0,
                child: Container(
                  height: 10.0,
                  width: widget.width - 20.0,
                  color: Colors.black,
                ),
              ),
              Positioned(
                left: _translationAnimation.value,
                top: 55.0 - (30.0 * _scaleAnimation.value / 2),
                child: Transform.rotate(
                  angle: _rotateAnimation.value * _degree,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      color: Color.fromRGBO(0, 128, 0, _fadeAnimation.value),
                    ),
                    height: 30.0 * _scaleAnimation.value,
                    width: 10.0 * _scaleAnimation.value,
                  ),
                ),
              ),
            ],
          ),
          Text(_currentGoal < _numGoals
              ? '$_currentGoal / $_numGoals'
              : 'Completed!'),
          ElevatedButton(
            onPressed: _progress,
            child: Text(_buttonText),
          ),
        ],
      ),
    );
  }
}
