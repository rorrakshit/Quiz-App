import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.changeQuestion, required this.answer});
  final void Function(String answer) changeQuestion;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        changeQuestion(answer);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Text(answer),
    );
  }
}
