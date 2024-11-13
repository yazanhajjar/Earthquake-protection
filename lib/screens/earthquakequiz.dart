import 'package:earthquake/models/the_question.dart';
import 'package:earthquake/screens/quizscreen.dart';
import 'package:flutter/material.dart';

class Earthquakequiz extends StatelessWidget {
  const Earthquakequiz({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quizscreen(
      title: 'Earthquake Quiz',
      question: earthquakeQuestion,
    );
  }
}
