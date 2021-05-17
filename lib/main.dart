import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "text": "What is your favorite color?",
      "answer": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ],
    },
    {
      "text": "What is your favorite animal?",
      "answer": [
        {"text": "Coelho", "score": 10},
        {"text": "Cobra", "score": 5},
        {"text": "Elefante", "score": 3},
        {"text": "Leão", "score": 1},
      ],
    },
    {
      "text": "What is your favorite teacher?",
      "answer": [
        {"text": "Maria", "score": 10},
        {"text": "Jhon", "score": 5},
        {"text": "Léo", "score": 3},
        {"text": "Petter", "score": 1},
      ],
    }
  ];

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  void _answer(int score) {
    if (haveQuestionSelected) {
      setState(() => {
            _selectedQuestion += 1,
            _totalScore += score,
          });
    }
  }

  void _restartQuiz() {
    setState(() => {
          _selectedQuestion = 0,
          _totalScore = 0,
        });
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
            : Result(score: _totalScore, restartQuiz: _restartQuiz),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
