import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toString(),
      style: GoogleFonts.lato(
          fontSize: 28, color: Colors.white, fontWeight: FontWeight.w900),
    );
  }
}
