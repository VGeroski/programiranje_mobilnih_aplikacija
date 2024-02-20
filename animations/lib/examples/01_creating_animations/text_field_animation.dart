import 'package:flutter/material.dart';

class TextFieldAnimation extends StatefulWidget {
  const TextFieldAnimation({super.key});

  @override
  State<TextFieldAnimation> createState() => _TextFieldAnimationState();
}

class _TextFieldAnimationState extends State<TextFieldAnimation> {
  var side = 10.0;
  var opacity = 1.0;
  var textController = TextEditingController(text: "10.0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Animation'),
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
            TextField(
              controller: textController,
            ),
            ElevatedButton(
              child: const Text("Set Size"),
              onPressed: () {
                setState(() {
                  side = double.parse(textController.text);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
