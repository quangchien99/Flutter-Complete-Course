import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.white],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
