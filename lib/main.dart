import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    void answerQuestion() {
      setState(() {
        questionIndex++;
      });
      print('question Index ' + questionIndex.toString());
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anton's App"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text(questions[0]),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
