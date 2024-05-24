import 'package:flutter/material.dart';

void main() {
  runApp(QuestionsApp());
}

class QuestionsAppState extends State<QuestionsApp> {
  int selectedQuestion = 0;

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
            Text(questions[selectedQuestion]),
            ElevatedButton(
              onPressed: answer,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
    
  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
  }

}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});
  
  @override
  QuestionsAppState createState() {
    return QuestionsAppState();
  }
}
