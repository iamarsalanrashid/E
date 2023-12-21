import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handlePress;
  final String answerText;
  Answer(this.handlePress, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(11),
      width: double.infinity,
      color: Colors.blueGrey,
      child: ElevatedButton(
        onPressed: handlePress,
        child: Text(answerText),
      ),
    );
  }
}
