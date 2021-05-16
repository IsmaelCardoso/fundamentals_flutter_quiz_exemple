import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  final _questions = const [
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

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  void _answer() {
    if (haveQuestionSelected) {
      setState(() => {_selectedQuestion++});
    }
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    List<String> answerTexts =
        haveQuestionSelected ? _questions[_selectedQuestion]["answer"] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: haveQuestionSelected
            ? Column(
                children: [
                  Question(_questions[_selectedQuestion]["text"]),
                  ...answerTexts
                      .map((answer) => Answer(answer, _answer))
                      .toList(),
                ],
              )
            : Center(
                child: Text(
                "Congratulations!!!",
                style: TextStyle(fontSize: 28),
              )),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
