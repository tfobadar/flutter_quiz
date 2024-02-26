import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
