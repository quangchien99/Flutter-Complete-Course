import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizzState();
  }
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(context) {
    return MaterialApp(
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
    );
  }
}
