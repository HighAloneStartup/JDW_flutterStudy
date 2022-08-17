import 'dart:developer';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase{
    var resultText = 'A';
    if (resultScore <= 5){
      resultText = 'D';
    }else if(resultScore <= 15){
      resultText = 'C';
    }else if(resultScore <= 30){
      resultText = 'B';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(

        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(
            child: Text('restart quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
