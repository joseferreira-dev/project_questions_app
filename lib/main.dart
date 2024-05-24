import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(const QuestionsApp());
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  _QuestionsAppState createState() {
    return _QuestionsAppState();
  }
}

class _QuestionsAppState extends State<QuestionsApp> {
  int _selectedQuestion = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'What is your favorite color?',
      'answers': [
        'Answer 1.1',
        'Answer 1.2',
        'Answer 1.3',
        'Answer 1.4',
      ],
    },
    {
      'text': 'What is your favorite animal?',
      'answers': [
        'Answer 2.1',
        'Answer 2.2',
        'Answer 2.3',
        'Answer 2.4',
      ],
    },
    {
      'text': 'What is your favorite coach?',
      'answers': [
        'Answer 3.1',
        'Answer 3.2',
        'Answer 3.3',
        'Answer 3.4',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {

    List<String> answersList = _questions[_selectedQuestion]['answers'] as List<String>;

    List<Widget> answersWidgets = answersList
      .map((text) => Answer(text, _answer))
      .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Questions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: hasSelectedQuestion
        ? Column(
          children: [
            Question(_questions[_selectedQuestion]['text'] as String),
            ...answersWidgets,
          ],
        )
        : const Center(
          child: Text(
            'Parabéns!',
            style: TextStyle(fontSize: 24),
          )
        ),
      ),
    );
  }

  void _answer() {
    setState(() {
      if (hasSelectedQuestion) {
        _selectedQuestion++;
      }
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length - 1;
  }
}
