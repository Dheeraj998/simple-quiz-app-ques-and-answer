import 'package:flutter/material.dart';
import 'package:que_ans/answers.dart';
import 'package:que_ans/question.dart';

class Quiz extends StatelessWidget {
  final int selectedIndex;
  final List<Map<String, Object>> ques_answer;
  final VoidCallback updateIndex;
  Quiz(
      {Key? key,
      required this.selectedIndex,
      required this.ques_answer,
      required this.updateIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Question(text: ques_answer[selectedIndex]["question"] as String),
        ...(ques_answer[selectedIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) => Answers(
                  text: answer['name'] as String,
                  onChanged: () => updateIndex(answer["score"]),
                ))
            .toList()
      ],
    );
  }
}
