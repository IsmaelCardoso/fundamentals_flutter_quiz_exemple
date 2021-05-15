import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelection;

  Answer(this.text, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: onSelection,
          child: Text(text),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.blue,
          )),
      width: double.infinity,
    );
  }
}
