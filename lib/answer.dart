import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  const Answer(this.answerHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => answerHandler(),
      child: Text(answerText),
    );
  }
}
