import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result({
    @required this.score,
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
    return Center(
        child: Text(
      resultScore,
      style: TextStyle(fontSize: 28),
    ));
  }
}
