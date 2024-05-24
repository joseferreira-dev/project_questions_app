import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<String> answers;
  final void Function() onSelected;

  const Quiz(this.question, this.answers, this.onSelected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...answers.map((text) => Answer(text, onSelected)),
      ],
    );
  }
}
