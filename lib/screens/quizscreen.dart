import 'package:earthquake/models/the_question.dart';
import 'package:earthquake/screens/result.dart';
import 'package:flutter/material.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key, required this.question, required this.title});
  final List<Question> question;
  final String title;

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  int questionNumber = 0;
  List<String> userAnswer = [];
  List<String> randomAnswers = [];

  String get currentQuestion {
    return widget.question[questionNumber].thequestion;
  }

  List<String> get shufflingAnswer {
    randomAnswers = List.of(widget.question[questionNumber].answer);
    randomAnswers.shuffle();
    return randomAnswers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim,
        title: Title(
            color: Theme.of(context).colorScheme.secondaryFixedDim,
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          children: [
            Text(
              currentQuestion,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 43, 6, 6)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...shufflingAnswer.map((e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          userAnswer.add(e);
                          setState(() {
                            if (questionNumber < widget.question.length - 1) {
                              questionNumber++;
                            } else {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => Resultscreen(
                                            questions: widget.question,
                                            answers: userAnswer,
                                          )));
                            }
                          });
                        },
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 50, 41, 41)),
                            padding:
                                WidgetStatePropertyAll(EdgeInsets.all(20))),
                        child: Text(
                          e,
                          style: const TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 202, 171, 171)),
                        )),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
