import 'package:flutter/material.dart';

import './question.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _answer() {
    setState(() => {_selectedQuestion++});
    print(_selectedQuestion);
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
            Question(questions[_selectedQuestion]),
            ElevatedButton(onPressed: _answer, child: Text("Answer 1")),
            ElevatedButton(onPressed: _answer, child: Text("Answer 2")),
            ElevatedButton(onPressed: _answer, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
