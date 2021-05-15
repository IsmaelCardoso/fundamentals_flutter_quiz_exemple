import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuestionApp());

@override
class QuestionApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final questions = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: [
            Text(questions[0]),
            ElevatedButton(onPressed: null, child: Text("Answer 1")),
            ElevatedButton(onPressed: null, child: Text("Answer 2")),
            ElevatedButton(onPressed: null, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
