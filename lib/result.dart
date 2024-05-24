import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final int totalPoints;
  final void Function() restartQuizz;

  const Result(this.text, this.totalPoints, this.restartQuizz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$text\nVocê acertou $totalPoints perguntas!',
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: restartQuizz,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(10),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
