import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz_app/home_page.dart';

void main() {
  runApp(
    MaterialApp(
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
          )),
          child: const HomePage(),
        ),
      ),
    ),
  );
}
