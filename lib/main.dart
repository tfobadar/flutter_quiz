import 'package:advance_basic/pages/home_page.dart';
import 'package:advance_basic/pages/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 37, 12, 80)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
