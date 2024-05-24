import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

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
  int _totalPoints = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'text': 'What is your favorite color?',
      'answers': [
        { 'answer': 'Sucess', 'point': 1 },
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Fail', 'point': 0 },
      ],
    },
    {
      'text': 'What is your favorite animal?',
      'answers': [
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Sucess', 'point': 1 },
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Fail', 'point': 0 },
      ],
    },
    {
      'text': 'What is your favorite coach?',
      'answers': [
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Fail', 'point': 0 },
        { 'answer': 'Sucess', 'point': 1 },
        { 'answer': 'Fail', 'point': 0 },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {

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
        ? Quiz(
          _questions,
          _selectedQuestion,
          _answer,
        )
        : const Result('Parabéns!'),
      ),
    );
  }

  void _answer(int point) {
    setState(() {
      if (hasSelectedQuestion) {
        _selectedQuestion++;
        _totalPoints+= point;
      }
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }
}
