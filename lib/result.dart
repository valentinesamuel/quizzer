import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetLogic;

  Result({this.resultScore, this.resetLogic});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!😍';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable 😊';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange! 😏';
    } else {
      resultText = 'You are so bad!😎';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Oh well, your score is:',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                resultScore.toString(),
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              Text(
                resultPhrase,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )),
        SizedBox(height: 50),
        RaisedButton(child: Text('Reset The Quizz'), onPressed: resetLogic)
      ],
    ));
  }
}
