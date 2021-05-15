import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
            Answer("Answer 1", _answer),
            Answer("Answer 2", _answer),
            Answer("Answer 3", _answer),
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
