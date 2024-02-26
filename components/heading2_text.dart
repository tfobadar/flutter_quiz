import 'package:flutter/material.dart';

class Heading2Text extends StatelessWidget {
  const Heading2Text({Key? key, required this.title, this.textAlignment = TextAlign.left}) : super(key: key);

  final String? title;
  final TextAlign textAlignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
      textAlign: textAlignment,
    );
  }
}
