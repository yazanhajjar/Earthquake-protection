import 'package:earthquake/models/the_question.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.answers, required this.questions});
  final List<String> answers;
  final List<Question> questions ;


  get summary {
    List<Map<String, Object>> summaryresult = [];
    for (int i = 0; i < questions.length; i++) {
      summaryresult.add({
        'index': i + 1,
        'question': questions[i].thequestion,
        'correctAnswer': questions[i].answer[0],
        'userAnswer': answers[i]
      });
    }
    return summaryresult;
  }

  get numcorrect {
    int num = 0;
    for (int i = 0; i < questions.length ; i++) {
      if (questions[i].answer[0] == answers[i]) {
        num++;
      }
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'The Result',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Theme.of(context).colorScheme.secondaryFixedDim),
          backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('You answerd $numcorrect correct of ${questions.length} ',textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              ...summary.map((e) => Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: e['index'] % 2 == 0
                          ? const Color.fromARGB(255, 113, 113, 113)
                          : const Color.fromARGB(255, 5, 4, 4),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      children: [
                        CircleAvatar(
                          backgroundColor: e['userAnswer'] == e['correctAnswer']
                              ? const Color.fromARGB(255, 196, 182, 136)
                              : const Color.fromARGB(255, 90, 62, 60),
                          child: Text(
                            e['index'].toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'The question: ${e['question']}',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: e['index'] % 2 != 0
                                      ? const Color.fromARGB(255, 113, 113, 113)
                                      : const Color.fromARGB(255, 5, 4, 4),
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text('The correct Answer : ${e['correctAnswer']}',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 252, 234, 175)),
                                textAlign: TextAlign.center),
                            const SizedBox(height: 10),
                            Text('your Answer : ${e['userAnswer']}',
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.white),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 50, 41, 41)),
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: const Text(
                    'Go to home page',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

