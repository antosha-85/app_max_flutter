import 'package:app_max/answer.dart';
import 'package:app_max/question.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

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
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
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
          title: Text(questions[_questionIndex]),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
