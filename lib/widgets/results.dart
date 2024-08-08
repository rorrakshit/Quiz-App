import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.data});
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${data['index']}.',
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Question: ${data['question']}',
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Your Answer: ${data['choosen-answer']}',
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Correct Answer: ${data['correct-answer']}',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
