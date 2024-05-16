import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionId;
  final Function answerHandler;

  const Quiz(
      {required this.questions,
      required this.questionId,
      required this.answerHandler,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionId]['question'] as String),
      ...(questions[questionId]['answer'] as List<Map>).map((answer) {
        return Answer(() => answerHandler(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}
