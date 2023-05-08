import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenSate();
  }
}

class _QuestionsScreenSate extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'The Questions...',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(
              answerText: 'Answer 1',
              onTap: () {},
            ),
            AnswerButton(
              answerText: 'Answer 1',
              onTap: () {},
            ),
            AnswerButton(
              answerText: 'Answer 1',
              onTap: () {},
            ),
          ],
        ));
  }
}
