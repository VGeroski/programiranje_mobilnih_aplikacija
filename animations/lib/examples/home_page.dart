import 'package:animations/examples/01_creating_animations/combined_animation.dart';
import 'package:animations/examples/01_creating_animations/container_animation.dart';
import 'package:animations/examples/01_creating_animations/text_field_animation.dart';
import 'package:animations/examples/01_creating_animations/slider_animation.dart';
import 'package:animations/examples/01_creating_animations/timer_animation.dart';
import 'package:animations/examples/02_tween_animations/goal_tracker_page.dart';
import 'package:animations/examples/02_tween_animations/tween_demo_widget.dart';
import 'package:animations/examples/03_combining_animations/goal_tracker_page_combined.dart';
import 'package:animations/examples/04_hero_animations/hero_example_2.dart';
import 'package:animations/examples/05_physiscs_animations/physiscs_animations.dart';
import 'package:flutter/material.dart';
import '01_creating_animations/my_stateful_widget.dart';
import '02_tween_animations/green_square_widget.dart';
import '02_tween_animations/tween_color_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations examples'),
      ),
      body: Center(
        child: SingleChildScrollView (
          child: Column(
            children: [
              const Text(
                'StateFulWidget example',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: const Text('Update Text Field'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyStateFulWidget()));
                },
              ),

              // ------------------- Section 1 - Creating animations examples ----------------------------------
              const Text(
                'Creating animations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: const Text('Text Field Animation'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TextFieldAnimation()));
                },
              ),
              ElevatedButton(
                child: const Text('Slider Animation'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SliderAnimation()));
                },
              ),
              ElevatedButton(
                child: const Text('Timer Animation'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TimerAnimation()));
                },
              ),
              ElevatedButton(
                child: const Text('Combined Animation'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CombinedAnimation()));
                },
              ),
              ElevatedButton(
                child: const Text('Animated Container'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerAnimation()));
                },
              ),

              // ------------------- Section 2 - Tween animations examples ----------------------------------
              const Text(
                'Tween animations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: const Text('Animation Controller'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GreenSquareWidget()));
                },
              ),
              ElevatedButton(
                child: const Text('Tween demo'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TweenDemoWidget()));
                },
              ),
              ElevatedButton(
                child: const Text('Tween color demo'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColorTweenDemoWidget()));
                },
              ),
              ElevatedButton(
                child: const Text('Goal tracker'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoalTrackerPage()));
                },
              ),

              // ------------------- Section 3 - Combining animations examples ----------------------------------
              const Text(
                'Combining animations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                child: const Text('Goal tracker - combined animations'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoalTrackerPageCombined()));
                },
              ),

              // ------------------- Section 4 - Hero animations examples ----------------------------------
              const Text(
                'Hero animations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              ElevatedButton(
                child: const Text('Hero widget - example'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeroWidget()));
                },
              ),

              // ------------------- Section 5 - Physics animations ----------------------------------
              const Text(
                'Physics animations',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              ElevatedButton(
                child: const Text('Physics animations - example'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhysicsAnimations()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
