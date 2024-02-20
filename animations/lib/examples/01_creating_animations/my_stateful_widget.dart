import 'package:flutter/material.dart';

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({super.key});

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  var message = "";
  var textController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Example for StateFul Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // Text field will be initialized and set by controller
                controller: textController,
              ),
              Text(message),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // updating state of message for Text widget with input value from user
                    message = "Hello ${textController.text}";
                  });
                },
                child: const Text('Say hello!'),
              )
            ],
          ),
        ));
  }
}
