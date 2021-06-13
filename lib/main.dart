import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;
  var questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Lion', 'Elephant', 'Snake']
    },
    {
      'questionText': 'What\'s your favourite idol?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  @override
  Widget build(Object context) {
    void _answerQuestion() {
      setState(() {
        _questionsIndex = _questionsIndex + 1;
      });
      print(_questionsIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionsIndex]['questionText'] as String,
            ),
            ...(questions[_questionsIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
