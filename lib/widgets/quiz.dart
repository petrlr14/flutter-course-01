import 'package:app/widgets/answer.dart';
import 'package:app/widgets/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function onPress;

  Quiz({
    @required this.questions,
    @required this.index,
    @required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(questions[index]['question']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => onPress(answer["score"]), answer["text"])).toList()
      ],
    );
  }
}
