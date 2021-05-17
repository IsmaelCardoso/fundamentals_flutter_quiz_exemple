import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final bool haveQuestionSelected;
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() answerProp;

  Quiz({
    @required this.haveQuestionSelected,
    @required this.questions,
    @required this.selectedQuestion,
    @required this.answerProp,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answerTexts =
        haveQuestionSelected ? questions[selectedQuestion]["answer"] : null;

    return Column(
      children: [
        Question(questions[selectedQuestion]["text"]),
        ...answerTexts
            .map((answer) => Answer(answer["text"], answerProp))
            .toList(),
      ],
    );
  }
}
