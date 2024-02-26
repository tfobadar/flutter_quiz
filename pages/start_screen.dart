import 'package:advance_basic/components/description_text.dart';
import 'package:advance_basic/components/heading_text.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png',
          ),
          const SizedBox(
            height: 50,
          ),
          const HeadingText(
            title: 'Flutter Quiz',
          ),
          const SizedBox(
            height: 10,
          ),
          const DescriptionText(
            description: 'Learn Flutter a fun way',
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 1.0, color: Colors.white),
            ),
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            label: const Text(
              'Start Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
