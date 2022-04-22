import 'package:flutter/material.dart';

//original syntax
// void main() {
//   runApp(MyApp());
// }

//modern shorthand
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions = [
    "What\'s your favorite color?",
    "What\s your favorite animal?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('answer 2'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
