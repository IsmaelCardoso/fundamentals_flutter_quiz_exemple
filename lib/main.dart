import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuestionApp());

@override
class QuestionApp extends StatelessWidget {
  void answer() {
    print("question answered 1");
  }

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
            ElevatedButton(onPressed: answer, child: Text("Answer 1")),
            ElevatedButton(
                onPressed: () {
                  print("question answered 2");
                },
                child: Text("Answer 2")),
            ElevatedButton(
                onPressed: () => print("question answered 3"),
                child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}
