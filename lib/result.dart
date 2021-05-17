import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartQuiz;

  Result({
    @required this.score,
    @required this.restartQuiz,
  });

  String get resultScore {
    if (score < 8) {
      return "Congratulations!";
    } else if (score < 12) {
      return "You are good!";
    } else if (score < 16) {
      return "Impressive!!!";
    } else {
      return "You are a Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          resultScore,
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
          onPressed: restartQuiz,
          child: Text(
            "Restart",
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
