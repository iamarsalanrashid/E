import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(11),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 24,
        ),
      ),
    );
  }
}
