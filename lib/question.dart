import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  const Question({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
    );
  }
}
