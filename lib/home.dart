import 'package:flutter/material.dart';
import 'package:que_ans/answers.dart';
import 'package:que_ans/question.dart';
import 'package:que_ans/quiz.dart';
import 'package:que_ans/result.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _ques_answer = const [
    {
      "question": 'who are you??',
      "answer": [
        {"name": "dheeraj", "score": 10},
        {"name": "ami", "score": 5},
        {"name": "dheeraj", "score": 2}
      ],
    },
    {
      "question": 'what you want??',
      "answer": [
        {"name": "dheeraj", "score": 10},
        {"name": "dheeraj", "score": 5},
        {"name": "dheeraj", "score": 2}
      ],
    },
    {
      "question": 'pls add me?',
      "answer": [
        {"name": "dheeraj", "score": 10},
        {"name": "dheeraj", "score": 5},
        {"name": "dheeraj", "score": 2},
      ],
    }
  ];
  var _selectedIndex = 0;
  var _totalScore = 0;
  void _resetUi() {
    setState(() {
      _selectedIndex = 0;
      print(_selectedIndex);
    });
  }

  void _updateIndex(int score) {
    _totalScore += score;
    setState(() {
      _selectedIndex = _selectedIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ques_Answ app'),
      ),
      body: SafeArea(
        child: _selectedIndex < _ques_answer.length
            ? Quiz(
                selectedIndex: _selectedIndex,
                ques_answer: _ques_answer,
                updateIndex: _updateIndex)
            : Result(_resetUi, _totalScore),
      ),
    );
  }
}
