import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 50 && resultScore >= 40) {
      resultText = 'You have a confident and adaptable personality.';
    } else if (resultScore <= 39 && resultScore >= 20) {
      resultText = 'You have a balanced and sociable personality';
    } else if (resultScore <= 19 && resultScore >= 12) {
      resultText = 'You have a spontaneous and easygoing personality';
    } else {
      resultText = 'You have an introspective and reserved personality.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: restartQuiz,
          child: Text(
            'Restart Quiz',
          ),
        ),
      ],
    ));
  }
}
