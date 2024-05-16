import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      child: Text(questionText, style: TextStyle(fontSize: 28)),
    );
  }
}
