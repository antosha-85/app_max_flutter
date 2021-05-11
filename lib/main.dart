import 'package:app_max/answer.dart';
import 'package:app_max/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    const List questions = const [
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
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
