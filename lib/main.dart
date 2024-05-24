import 'package:flutter/material.dart';

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
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Text(questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
    
  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

}
