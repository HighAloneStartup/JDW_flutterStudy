import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIdx;
  final Function answerQuestion;


  const Quiz({Key? key, required this.questions, required this.answerQuestion, required this.questionIdx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIdx]['questionText'] as String),
        ...(questions[questionIdx]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }),
      ],
    );
  }
}
