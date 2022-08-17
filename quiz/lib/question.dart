import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  const Question(String question, {Key? key})
      : _questionText = question,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
