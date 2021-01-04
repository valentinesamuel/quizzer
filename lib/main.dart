import 'package:flutter/material.dart';
import 'package:quizzer/quiz.dart';
import 'package:quizzer/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Sanke', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'question': 'What\'s your favorite instructor?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Mosh', 'score': 1},
        {'text': 'Brad', 'score': 1},
        {'text': 'DevEd', 'score': 1},
      ]
    },
  ];
// List<Map<String, Object>>
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  void _resetQuiz() {
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
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                resetLogic: _resetQuiz,
              ),
      ),
    );
  }
}
