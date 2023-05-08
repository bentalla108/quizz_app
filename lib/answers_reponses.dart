import 'package:flutter/material.dart';

class AnswersReponses extends StatelessWidget {
  const AnswersReponses(this.answerText, {super.key});
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        answerText,
      ),
    );
  }
}
