import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'question': 'What\'s your fav color?',
      'answer': [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 7},
        {'text': 'Black', 'score': 3},
        {'text': 'Green', 'score': 9}
      ]
    },
    {
      'question': 'What\'s your fav animal?',
      'answer': [
        {'text': 'Cat', 'score': 9},
        {'text': 'Dog', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Elephant', 'score': 7}
      ]
    },
    {
      'question': 'What\'s your fav drink?',
      'answer': [
        {'text': 'Cofee', 'score': 3},
        {'text': 'Tea', 'score': 6},
        {'text': 'Milk', 'score': 9}
      ]
    }
  ];

  var _questionId = 0;
  var _finalScore = 0;

  void _answered(int score) {
    setState(() {
      _questionId++;
      _finalScore += score;
    });
  }

  void _resetApp() {
    setState(() {
      _questionId = 0;
      _finalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar here'),
          backgroundColor: Colors.blueGrey,
        ),
        body: _questionId < _questions.length
            ? Quiz(
                questions: _questions,
                questionId: _questionId,
                answerHandler: _answered)
            : Result(_resetApp, _finalScore),
      ),
    );
  }
}
