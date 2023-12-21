import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'question':
          '1.	Question : What is your preferred way to spend a weekend?',
      'answers': [
        {'text': 'Exploring new outdoor activities', 'score': 10},
        {'text': 'Relaxing at home with a good book', 'score': 5},
        {'text': 'Socializing with friends or going to parties', 'score': 3},
        {'text': 'Watching movies or TV shows', 'score': 1},
      ],
    },
    {
      'question': '2.	Question: How do you handle stress?',
      'answers': [
        {'text': 'Taking a deep breath and finding a solution', 'score': 10},
        {'text': 'Seeking support and talking to someone', 'score': 5},
        {'text': 'Keeping it to myself and working it out', 'score': 3},
        {
          'text': 'Distracting myself with activities or entertainment',
          'score': 1
        },
      ],
    },
    {
      'question': '3.	Question: What\'s your attitude towards change?',
      'answers': [
        {'text': 'Embrace change and see it as an opportunity', 'score': 10},
        {'text': 'Adapt to change with some resistance', 'score': 5},
        {'text': 'Prefer stability and avoid change', 'score': 3},
        {'text': 'Dislike change and resist it strongly', 'score': 1},
      ],
    },
    {
      'question': '4.	Question: How do you approach making decisions?',
      'answers': [
        {'text': 'Analyze and weigh all options carefully', 'score': 10},
        {'text': 'Consider pros and cons but trust your instincts', 'score': 5},
        {'text': 'Make quick decisions without overthinking', 'score': 3},
        {'text': 'Struggle with decision-making and often delay', 'score': 1},
      ],
    },
    {
      'question':
          '5.	Question: What\'s your preferred method of communication?',
      'answers': [
        {'text': 'Face-to-face or phone calls', 'score': 10},
        {'text': 'Texting or messaging apps', 'score': 5},
        {'text': 'Social media and online communication', 'score': 3},
        {'text': 'Limited communication, prefer solitude', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
