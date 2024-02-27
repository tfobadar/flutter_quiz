import 'package:advance_basic/components/answer_button.dart';
import 'package:advance_basic/components/heading2_text.dart';
import 'package:advance_basic/data/questions.dart';
import 'package:advance_basic/pages/start_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key, required this.onSelectAnswer})
      : super(key: key);

  final void Function(String answer)? onSelectAnswer;

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectAnswer) {
    widget.onSelectAnswer!(selectAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Heading2Text(
              title: currentQuestion.text, textAlignment: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(
              answer: item,
              onTap: () {
                answerQuestion(item);
              },
            );
          })
        ],
      ),
    );
  }
}
