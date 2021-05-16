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
      {
        "text": "What is your favorite color?",
        "answer": ["Black", "Red", "Green", "White"],
      },
      {
        "text": "What is your favorite animal?",
        "answer": ["Coelho", "Cobra", "Elefante", "Leão"],
      },
      {
        "text": "What is your favorite teacher?",
        "answer": ["Maria", "Jhon", "Léo", "Petter"],
      }
    ];

    List<String> answerTexts = questions[_selectedQuestion]["answer"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]["text"]),
            ...answerTexts.map((answer) => Answer(answer, _answer)).toList(),
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
