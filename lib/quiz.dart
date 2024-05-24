import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() onSelected;

  Quiz(
    this.questions,
    this.selectedQuestion,
    this.onSelected,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    var answersList = hasSelectedQuestion
      ? questions[selectedQuestion]['answers'] as List<String>
      : null;

    return Column(
      children: [
        Question(questions[selectedQuestion]['text'] as String),
        ...answersList!.map((text) => Answer(text, onSelected)),
      ],
    );
  }

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }
}
