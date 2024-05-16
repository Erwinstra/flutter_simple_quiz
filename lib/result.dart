import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int finalScore;

  const Result(this.resetHandler, this.finalScore, {super.key});

  String get resultPhrase {
    String resultText;
    if (finalScore < 10) {
      resultText = "You are Dangerous, Man...";
    } else if (finalScore < 16) {
      resultText = "You're a lil bit weird.";
    } else if (finalScore < 22) {
      resultText = "You are Awesome!";
    } else {
      resultText = "You're a Peaceful Person :)";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ),
        const Align(
          alignment: Alignment.center,
        ),
        OutlinedButton(
            onPressed: () => resetHandler(),
            child: const Text(
              "RESET",
              style: TextStyle(fontSize: 28),
            ))
      ],
    );
  }
}
