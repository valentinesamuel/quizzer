import 'package:flutter/material.dart';

import 'package:quizzer/answer.dart';
import 'package:quizzer/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz({this.answerQuestions, this.questionIndex, this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerText: answer['text'],
              selectHandler: () => answerQuestions(answer['score']));
        }).toList()
      ],
    );
  }
}
