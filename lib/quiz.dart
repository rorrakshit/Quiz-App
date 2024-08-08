import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/pages/question_screen.dart';
import 'package:quiz_app/pages/result_screen.dart';
import 'package:quiz_app/pages/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAns(String answer) {
    selectedAns.add(answer);
    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartSwitch() {
    selectedAns = [];
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(chooseAns);
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choosenAns: selectedAns,
        restartSwitch: restartSwitch,
      );
    }
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffD0B8A8),
              Color(0xffF8EDE3),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}
