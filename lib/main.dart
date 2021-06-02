import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    var questions = ['questions A', 'question B', 'question c'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('A'),
            ElevatedButton(onPressed: null, child: Text('text1')),
            ElevatedButton(onPressed: null, child: Text('text2')),
            ElevatedButton(onPressed: null, child: Text('text3')),
          ],
        ),
      ),
    );
  }
}
