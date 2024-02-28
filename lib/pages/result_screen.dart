import 'package:advance_basic/components/heading2_text.dart';
import 'package:advance_basic/components/questions_summary.dart';
import 'package:advance_basic/data/questions.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, required this.answers, required this.restartQuiz})
      : super(key: key);
  final void Function() restartQuiz;

  List<String>? answers;

  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers!.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'answer': questions[i].answers[0],
        'user_answer': answers![i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numOfTotalQuestions = questions.length;
    final numCorrectAnswer = getSummaryData.where((data) {
      return data['user_answer'] == data['answer'];
    }).length;
    print(numCorrectAnswer);
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading2Text(
              title:
                  'You answered $numCorrectAnswer out of $numOfTotalQuestions questions corretly!',
              textAlignment: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          QuestionsSummary(getSummaryData),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: OutlinedButton.icon(
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.white),
              ),
              icon: const Icon(
                Icons.replay_outlined,
                color: Colors.white,
              ),
              label: const Text(
                'Restart Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
