import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.answer, required this.onTap})
      : super(key: key);

  final String? answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        textStyle: const TextStyle(fontSize: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answer.toString(), textAlign: TextAlign.center),
    );
  }
}
