import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key, this.description}) : super(key: key);

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description.toString(),
      style: const TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
