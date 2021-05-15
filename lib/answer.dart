import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;

  Answer(this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Text(text));
  }
}
