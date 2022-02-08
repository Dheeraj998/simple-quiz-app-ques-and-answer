import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetUi;
  final int resultScore;
  Result(this.resetUi, this.resultScore);
  String get resultPhrase {
    String resultText;
    if (resultScore > 8) {
      resultText = "awsome";
    } else if (resultScore > 5) {
      resultText = "ok cool";
    } else {
      resultText = "not ok ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(resultPhrase),
        ElevatedButton(onPressed: resetUi, child: Text('reset'))
      ],
    );
  }
}
