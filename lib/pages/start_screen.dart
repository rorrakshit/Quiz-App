import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen,{super.key});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/start-image.webp'),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Test Your Knowledge of Flutter With Quiz',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: switchScreen,
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 6,
            shadowColor: Colors.black,
          ),
        )
      ],
    );
  }
}
