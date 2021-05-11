import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final List _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', "Green", 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', "Elephant", 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Anton', 'Oksana', "Max", 'Kyle']
    },
  ];
  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        _questionIndex++;
        print('question Index ' + _questionIndex.toString());
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
