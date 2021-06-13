import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(Object context) {
    var questionsIndex = 0;

    void answerQuestion() {
      questionsIndex += 1;
      print(questionsIndex);
    }

    var questions = ['questions A', 'question B', 'question c'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('A'),
            ElevatedButton(
                onPressed: answerQuestion, child: Text(questions.elementAt(0))),
            ElevatedButton(
                onPressed: answerQuestion, child: Text(questions[1])),
            ElevatedButton(onPressed: answerQuestion, child: Text('text3')),
          ],
        ),
      ),
    );
  }
}
