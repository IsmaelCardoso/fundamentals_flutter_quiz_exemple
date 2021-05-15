import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void answer() {
    setState(() => {selectedQuestion++});
    print(selectedQuestion);
  }

  @override
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
            Text(questions[selectedQuestion]),
            ElevatedButton(onPressed: answer, child: Text("Answer 1")),
            ElevatedButton(onPressed: answer, child: Text("Answer 2")),
            ElevatedButton(onPressed: answer, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
