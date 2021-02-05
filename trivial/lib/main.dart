import 'package:flutter/material.dart';
import 'Start_screen.dart';

void main() {
  runApp(Trivia());
}

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Start(),
      debugShowCheckedModeBanner: false,
    );
  }
}
