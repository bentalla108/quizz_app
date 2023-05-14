import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/home_page.dart';
import 'package:quizz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizSate();
  }
}

class _QuizSate extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = HomePage(switchScreen);
  //   super.initState();
  // }

  var activeScreen = 'start-screen';
  List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    selectedAnswer.length == questions.length
        ? setState(() {
            // activeScreen = const QuestionsScreen();
            activeScreen = 'start-screen';
            selectedAnswer = [];
          })
        : null;
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 149, 98, 220),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
