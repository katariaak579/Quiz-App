import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int ques;
  final Function correctAnswer;

  Quiz(
      {@required this.correctAnswer,
      @required this.ques,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[ques]["questionIs"] as String,
        ),
        //Question(questions[_run]),
        ...(questions[ques]["options"] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>correctAnswer(answer["score"]), answer["text"] as String);
        }).toList(),
      ],
    );
  }
}
