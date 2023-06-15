import 'package:flutter/material.dart';

class Question {
  final String txt;
  final bool ans;
  Question(this.txt, this.ans);
}
class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}
 
class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [
    Question('Do you ever talk to yourself?', true),
    Question(' Do you talk in your sleep?', true),
    Question('Do you have pets?', false),
    Question('Do you ever talk to your pets?', true),
    Question('Do you sing silly songs to your pets?', false)
  ];
  int index = 0;
  int score = 0;
  void answerQuestion(bool answer) {
    if (answer == questions[index].ans) {
      setState(() {
        score++;
      });
    }
    if (index < questions.length - 1) {
      setState(() {
        index++;
      });
    } else {
      Navigator.pushNamed(context, '/results', arguments: score);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Question ${index + 1}',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            Text(
              questions[index].txt,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => answerQuestion(true),
                  child: Text('True'),
                ),
                ElevatedButton(
                  onPressed: () => answerQuestion(false),
                  child: Text('False'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
