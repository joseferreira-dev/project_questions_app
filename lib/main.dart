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

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Questions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]),
            Answer('Answer 1', _answer),
            Answer('Answer 2', _answer),
            Answer('Answer 3', _answer),
          ],
        ),
      ),
    );
  }

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
  }
}
