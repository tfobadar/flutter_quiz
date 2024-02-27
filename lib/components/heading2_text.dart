import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading2Text extends StatelessWidget {
  const Heading2Text(
      {Key? key, required this.title, this.textAlignment = TextAlign.left})
      : super(key: key);

  final String? title;
  final TextAlign textAlignment;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: GoogleFonts.lato(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.w900),
      textAlign: textAlignment,
    );
  }
}
