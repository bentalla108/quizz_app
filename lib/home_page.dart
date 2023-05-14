import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(170, 172, 143, 223),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
            )),
        const SizedBox(
          height: 5,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: startQuiz,
          label: const Text('Commencer le quizz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    );
  }
}
