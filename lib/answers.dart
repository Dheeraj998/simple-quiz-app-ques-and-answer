import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback onChanged;
  final String text;
  const Answers({Key? key, required this.onChanged, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onChanged,
        child: Text(text),
      ),
    );
  }
}
