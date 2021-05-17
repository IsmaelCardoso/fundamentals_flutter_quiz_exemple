import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: haveQuestionSelected
            ? Quiz(
                haveQuestionSelected: haveQuestionSelected,
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                answerProp: _answer,
              )
            : Result("Congratulations!!!"),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
