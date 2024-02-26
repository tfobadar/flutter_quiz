import 'package:advance_basic/pages/question_screen.dart';
import 'package:advance_basic/pages/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Color.fromARGB(255, 37, 12, 80)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
