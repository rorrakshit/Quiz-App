import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/widgets/results.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenAns, required this.restartSwitch});
  final List<String> choosenAns;
  final void Function() restartSwitch;

  List<Map<String, Object>> get summaryData {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAns.length; i++) {
      summary.add({
        'index': i + 1,
        'question': questions[i].text,
        'choosen-answer': choosenAns[i],
        'correct-answer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    var totalQuestions = questions.length;
    var corrQues = summaryData
        .where(
          (ans) => ans['correct-answer'] == ans['choosen-answer'],
        )
        .length;
    
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You did $corrQues correct questions out of $totalQuestions total questions',
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: ht * 0.7,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                ...summaryData.map((data) {
                  return Results(
                    data: data,
                  );
                }),
              ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: restartSwitch,
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
