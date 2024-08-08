import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAns,{super.key});
  final void Function(String answer) chooseAns;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var counter = 0;
  answerQuestion(String answer) {
    widget.chooseAns(answer);
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double wdt = MediaQuery.of(context).size.width;
    final currentQues = questions[counter];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: wdt * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQues.text,style: const TextStyle(color: Colors.black),),
          const SizedBox(
            height: 40,
          ),
          ...currentQues.suffledAns.map((answer) {
            return AnswerButton(
              changeQuestion:(String answer)=> answerQuestion(answer),
              answer: answer,
            );
          }),
        ],
      ),
    );
  }
}
