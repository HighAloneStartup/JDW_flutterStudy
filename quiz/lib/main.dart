import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIdx = 0;
  int _totalScore = 0;
  final _questions = [
    {
      'questionText': 'what is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite subject?',
      'answers': [
        {'text': 'Math', 'score': 10},
        {'text': 'English', 'score': 5},
        {'text': 'Science', 'score': 3},
        {'text': 'Korean', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite animals?',
      'answers': [
        {'text': 'Bunny', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Monkey', 'score': 3},
        {'text': 'Tiger', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your favorite movie?',
      'answers': [
        {'text': 'Top Gun', 'score': 10},
        {'text': 'Lion King', 'score': 5},
        {'text': 'Old Boy', 'score': 3},
        {'text': 'The Greatest Showman', 'score': 1},
      ],
    },
  ];

  void _resetQuiz(){
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIdx += 1;
    });
    if (_questionIdx < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:
            AppBar(title: Text("Quiz Quiz"), backgroundColor: Colors.white12),
        body: _questionIdx < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIdx: _questionIdx,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
